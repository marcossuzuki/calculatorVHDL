LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ps2_kbd_test is
	port
	(
		------------------------	Clock Input	 	------------------------
		CLOCK_24	: 	in	STD_LOGIC_VECTOR (1 downto 0);	--	24 MHz
		CLOCK_27	:	in	STD_LOGIC_VECTOR (1 downto 0);	--	27 MHz
		CLOCK_50	: 	in	STD_LOGIC;								--	50 MHz
		-- CLOCKTAP	: 	out	STD_LOGIC;											
		
		------------------------	Push Button		------------------------
		KEY 	:		in	STD_LOGIC_VECTOR (3 downto 0);		--	Pushbutton[3:0]

		------------------------	DPDT Switch		------------------------
		SW 	:		in	STD_LOGIC_VECTOR (9 downto 0);			--	Toggle Switch[9:0]
		
		------------------------	7-SEG Dispaly	------------------------
		HEX0 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 0
		HEX1 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 1
		HEX2 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 2
		HEX3 	:		out	STD_LOGIC_VECTOR (6 downto 0);		--	Seven Segment Digit 3
		
		----------------------------	LED		----------------------------
		LEDG 	:		out	STD_LOGIC_VECTOR (7 downto 0);		--	LED Green[7:0]
		LEDR 	:		out	STD_LOGIC_VECTOR (9 downto 0);		--	LED Red[9:0]
					
		------------------------	PS2		--------------------------------
		PS2_DAT 	:		inout	STD_LOGIC;	--	PS2 Data
		PS2_CLK	:		inout	STD_LOGIC		--	PS2 Clock
	);
end;

architecture struct of ps2_kbd_test is
	component conv_7seg
		port(
			digit		:		in STD_LOGIC_VECTOR (3 downto 0);
			enable 	: IN STD_LOGIC;
			seg	   :		out STD_LOGIC_VECTOR (6 downto 0)
		);
	end component;
	
	component PWM is
	 generic(n: integer:=8);
	 port ( 	
				CLK 		: in  std_logic;
				RST 		: in  std_logic;
				ENABLE  	: in  std_logic;
				DUTY		: in  std_logic_vector (n-1 downto 0);
				PWM_OUT 	: out std_logic
			 );
	end component;

	component kbdex_ctrl
		generic(
			clkfreq : integer
		);
		port(
			ps2_data		:	inout	std_logic;
			ps2_clk		:	inout	std_logic;
			clk			:	in 	std_logic;
			en				:	in 	std_logic;
			resetn		:	in 	std_logic;
			lights		: 	in		std_logic_vector(2 downto 0); -- lights(Caps, Nun, Scroll)		
			key_on		:	out	std_logic_vector(2 downto 0);
			key_code		:	out	std_logic_vector(47 downto 0)
		);
	end component;

	component map_ps2	
		port( key_in	: in STD_LOGIC_VECTOR (15 downto 0);
				key_out	: out STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
	component FF_tipoD
	generic(n: integer:=16);
	PORT(D 	: IN STD_LOGIC_VECTOR(n-1 downto 0);
		  set : IN STD_LOGIC;
		  CLK, RESET : IN STD_LOGIC;
		  Q2 	: BUFFER STD_LOGIC_VECTOR(n-1 downto 0));
	end component;
	
	signal CLOCKHZ, resetn 	: std_logic;
	signal key0 				: std_logic_vector(47 downto 0);
	signal key_conv			: std_logic_vector(15 downto 0);
	signal key_seg				: std_logic_vector(15 downto 0);
	signal stack0				: std_logic_vector(15 downto 0):=x"0000";
	signal lights, key_on	: std_logic_vector( 2 downto 0);
	signal pwm_OUT			 	: STD_LOGIC;
	type state_key	is (pressed, released);
	signal statek, next_statek: state_key;
begin 
	resetn <= KEY(0);
	
	key_seg <= stack0;
	
	hexseg0: conv_7seg port map(
		key_seg(3 downto 0), pwm_OUT, HEX0
	);
	hexseg1: conv_7seg port map(
		key_seg(7 downto 4), pwm_OUT, HEX1
	);
	hexseg2: conv_7seg port map(
		key_seg(11 downto 8), pwm_OUT, HEX2
	);
	hexseg3: conv_7seg port map(
		key_seg(15 downto 12), pwm_OUT, HEX3
	);

	kbd_ctrl : kbdex_ctrl generic map(24000) port map(
		PS2_DAT, PS2_CLK, CLOCK_24(0), KEY(1), resetn, lights,
		key_on, key_code => key0
	);
	
	PWM1: pwm PORT MAP (CLK => CLOCK_50, RST => '0', ENABLE => SW(8), DUTY => SW(7 downto 0), pwm_OUT => pwm_OUT);
	
	map1: map_ps2 PORT MAP (key_in=>key0(15 downto 0), key_out=>key_conv);
	
	LEDG(7 downto 5) <= key_on;
	
	LEDR(9) <= stack0(15); -- indicador de negativo
	
	-- lights <= SW(2 downto 0);
	
	-- CLOCKTAP <= CLOCKHZ;
	
	-- Hz clock	
	process(CLOCK_24(0))
		constant F_HZ : integer := 5;
		
		constant DIVIDER : integer := 24000000/F_HZ;
		variable count : integer range 0 to DIVIDER := 0;		
	begin
		if(rising_edge(CLOCK_24(0))) then
			if count < DIVIDER / 2 then
				CLOCKHZ <= '1';
			else 
				CLOCKHZ <= '0';
			end if;
			if count = DIVIDER then
				count := 0;
			end if;
			count := count + 1;			
		end if;
	end process;	
	
	
	key_fsm: process(CLOCK_50)
	begin
		if(CLOCK_50'event and CLOCK_50='1') then
			statek<=next_statek;
		end if;
	end process;
	
	next_statek_func: process(key0(15 downto 0), statek)
	begin
		case statek is
		when pressed =>
			if key0(15 downto 0) /= x"0000" then
				next_statek<= pressed;
			else
				next_statek<= released;
			end if;
		when released=>
			if key0(15 downto 0) /= x"0000" then
				next_statek<= pressed;
			end if;
		end case;
	end process;
	
	PROCESS (CLOCK_50)
	BEGIN
		if(CLOCK_50'EVENT AND CLOCK_50 = '1') then
			if key0(15 downto 0) = x"0066" then
				stack0 <= (others=>'0');
			elsif key0(15 downto 0) /= x"0000" THEN
				if(key_conv <= x"0009") then
					stack0 <= (stack0(14 downto 0) & '0') + (stack0(12 downto 0) & "000") + key_conv;
				end if;
			else
				stack0 <= stack0;
			END IF;
		end if;
	END PROCESS;
end struct;
