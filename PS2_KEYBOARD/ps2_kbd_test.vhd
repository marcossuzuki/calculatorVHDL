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
	
	component bcd is
		generic (n : integer:= 16);
		Port ( binIN 	 	: in   STD_LOGIC_VECTOR (n-1 downto 0);
				 bcd_out		: out  STD_LOGIC_VECTOR (n+3 downto 0)
				);
	end component;
	
	component somador_for IS
		GENERIC(n 	: INTEGER := 16 );
		PORT (x, y 	: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
				ze		: IN STD_LOGIC;
				s 		: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
				zs 	: OUT STD_LOGIC);
	END component;
	
	signal CLOCKHZ, resetn 	: std_logic;
	signal key0 				: std_logic_vector(47 downto 0);
	signal key_conv			: std_logic_vector(15 downto 0);
	signal key_seg				: std_logic_vector(15 downto 0);
	signal toDisplay			: std_logic_vector(15 downto 0);
	signal bcd_out				: std_logic_vector(19 downto 0);
	signal tmp_stack			: std_logic_vector(15 downto 0):=x"0000";
	signal stack0				: std_logic_vector(15 downto 0):=x"0000";
	signal comp2_stack0		: std_logic_vector(15 downto 0):=x"0000";
	signal stack1				: std_logic_vector(15 downto 0):=x"0000";
	signal comp2_stack1		: std_logic_vector(15 downto 0):=x"0000";
	signal stack2				: std_logic_vector(15 downto 0):=x"0000";
	signal stack3				: std_logic_vector(15 downto 0):=x"0000";
	signal soma_result1		: std_logic_vector(15 downto 0):=x"0000";
	signal sub_result1		: std_logic_vector(15 downto 0):=x"0000";
	signal soma_result2		: std_logic_vector(15 downto 0):=x"0000";
	signal sub_result2		: std_logic_vector(15 downto 0):=x"0000";
	signal lights, key_on	: std_logic_vector( 2 downto 0);
	signal pwm_OUT				: STD_LOGIC;
	signal statek, next_statek: STD_LOGIC;
	signal clean_tmp			: STD_LOGIC:='0';
	signal overflow			: STD_LOGIC:='0';
	signal soma_overflow1	: STD_LOGIC:='0';
	signal sub_overflow1		: STD_LOGIC:='0';
	signal soma_overflow2	: STD_LOGIC:='0';
	signal sub_overflow2		: STD_LOGIC:='0';
	
begin 
	
	resetn <= KEY(0);
	
	hexseg0: conv_7seg port map(
		toDisplay(3 downto 0), pwm_OUT, HEX0
	);
	hexseg1: conv_7seg port map(
		toDisplay(7 downto 4), pwm_OUT, HEX1
	);
	hexseg2: conv_7seg port map(
		toDisplay(11 downto 8), pwm_OUT, HEX2
	);
	hexseg3: conv_7seg port map(
		toDisplay(15 downto 12), pwm_OUT, HEX3
	);

	kbd_ctrl : kbdex_ctrl generic map(24000) port map(
		PS2_DAT, PS2_CLK, CLOCK_24(0), KEY(1), resetn, lights,
		key_on, key_code => key0
	);
	
	PWM1: pwm PORT MAP (CLK => CLOCK_50, RST => '0', ENABLE => SW(8), DUTY => SW(7 downto 0), pwm_OUT => pwm_OUT);
	
	map1: map_ps2 PORT MAP (key_in=>key0(15 downto 0), key_out=>key_conv);
	
	bcd1: bcd PORT MAP (key_seg, bcd_out=> bcd_out);
	
	comp2_stack0 <= not stack0 +1;
	comp2_stack1 <= not stack1 +1;
	
	soma1: somador_for PORT MAP (tmp_stack, stack0, ze=>'0', s=>soma_result1, zs=>soma_overflow1);
	sub1:  somador_for PORT MAP (tmp_stack, comp2_stack0, ze=>'0', s=>sub_result1,  zs=>sub_overflow1);
	soma2: somador_for PORT MAP (stack0, stack1, ze=>'0', s=>soma_result2, zs=>soma_overflow2);
	sub2:  somador_for PORT MAP (stack0, comp2_stack1, ze=>'0', s=>sub_result2,  zs=>sub_overflow2);
	
	LEDG(7 downto 5) <= key_on;
	
	LEDR(9) <= tmp_stack(15); -- indicador de negativo
	LEDR(8) <= overflow; --led indicador de overflow
	
	with tmp_stack(15) select
		key_seg <= not(tmp_stack)+1 when '1',
					  tmp_stack when others;
	
	
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
	
	process(CLOCK_50)
	begin
		if(CLOCK_50'event and CLOCK_50='1') then
			statek<=next_statek;
		end if;
	end process;

	process(key_on(0))
	begin
		if(key_on(0) = '1') then
			if (statek = '0') then
				case clean_tmp is
					when '1' =>
						if (key0(15 downto 0) = x"0066") then
							tmp_stack <= stack1;
							stack3 <= (others=>'0');
							stack2 <= stack3;
							stack1 <= stack2;
							stack0 <= stack1;
							overflow <= '0'; --led de overflow
						elsif (overflow = '0') then
							if(key_conv <= x"0009" and clean_tmp ='1') then
								tmp_stack <= key_conv;
								clean_tmp <= '0';
							elsif(key_conv = x"E05A") then --apertando ENTER do numpad
								stack3 <= stack2;
								stack2 <= stack1;
								stack1 <= stack0;
								stack0 <= tmp_stack;
								clean_tmp <= '0';
							elsif(key_conv = x"0077") then --complemento de dois caso aperte NumLcok
								stack0 <= tmp_stack;
								tmp_stack <= (not tmp_stack)+1;
								clean_tmp <= '0';
							elsif(key_conv = x"0079") then --soma apertando '+' do numpad
								if((stack0(15) and stack1(15)) /= soma_result2(15)) then --verifica overflow
									overflow <= '1';
									stack3 <= (others=>'0');
									stack2 <= stack3;
									stack1 <= stack2;
									stack0 <= (others=>'0');
									tmp_stack <= (others=>'0');
								else 
									stack3 <= (others=>'0');
									stack2 <= stack3;
									stack1 <= stack2;
									stack0 <= soma_result2;
									tmp_stack <= soma_result2;
								end if;
								clean_tmp <= '0';
							elsif(key_conv = x"007B") then --subtracao apertando '-' do numpad
								if((stack0(15) and not stack1(15)) /= sub_result2(15)) then --verifica overflow
									overflow <= '1';
									stack3 <= (others=>'0');
									stack2 <= stack3;
									stack1 <= stack2;
									stack0 <= (others=>'0');
									tmp_stack <= (others=>'0');
								else 
									stack3 <= (others=>'0');
									stack2 <= stack3;
									stack1 <= stack2;
									stack0 <= sub_result2; 
									tmp_stack <= sub_result2; 
								end if;
								clean_tmp <= '0';
							elsif(key_conv = x"007C") then --multiplicacao apertando '*' do numpad
								if(sub_overflow2 = '1') then
									overflow <= '1';
									stack3 <= (others=>'0');
									stack2 <= stack3;
									stack1 <= stack2;
									stack0 <= (others=>'0');
									tmp_stack <= (others=>'0');
								else
									stack3 <= (others=>'0');
									stack2 <= stack3;
									stack1 <= stack2;
									stack0 <= stack0 +(not stack1)+1; 
									tmp_stack <= stack0 +(not stack1)+1; 
								end if;
								clean_tmp <= '0';
							end if;
						end if;	
						
					when '0' =>
						if (key0(15 downto 0) = x"0066") then
							tmp_stack <= (others=>'0');
							overflow <= '0'; --led de overflow
						elsif (overflow = '0') then
							if(key_conv <= x"0009") then
								if(tmp_stack<x"0CCC") then
									tmp_stack <= (tmp_stack(14 downto 0) & '0') + (tmp_stack(12 downto 0) & "000") + key_conv; --multiplica por 10 stack0 e soma o valor
								elsif(tmp_stack=x"0CCC" and key_conv <= x"0007") then --limitar para valores menores que 32767
									tmp_stack <= (tmp_stack(14 downto 0) & '0') + (tmp_stack(12 downto 0) & "000") + key_conv; --multiplica por 10 stack0 e soma o valor
								end if;
							elsif(key_conv = x"E05A") then --apertando ENTER do numpad
								stack3 <= stack2;
								stack2 <= stack1;
								stack1 <= stack0;
								stack0 <= tmp_stack;
								clean_tmp <='1';
							elsif(key_conv = x"0077") then --complemento de dois caso aperte NumLcok
								tmp_stack <= (not tmp_stack)+1;
							elsif(key_conv = x"0079") then --soma apertando '+' do numpad
								if((stack0(15) and stack1(15)) /= soma_result1(15)) then
									overflow <= '1';
									stack0 <= (others=>'0');
									tmp_stack <=(others=>'0');
								else 
									stack0 <= soma_result1;
									tmp_stack <= soma_result1;
								end if;
								clean_tmp <='1';
							elsif(key_conv = x"007B") then --subtracao apertando '-' do numpad
								if((stack0(15) and not stack1(15)) /= sub_result1(15)) then
									overflow <= '1';
									stack0 <=(others=>'0');
									tmp_stack <=(others=>'0');
								else 
									stack0 <= sub_result1; 
									tmp_stack <= sub_result1;
								end if;
								clean_tmp <='1';
							elsif(key_conv = x"007C") then --multiplicacao apertando '*' do numpad
								if((stack0(15) and not stack1(15)) /= sub_result1(15)) then
									overflow <= '1';
									stack0 <=(others=>'0');
									tmp_stack <=(others=>'0');
								else 
									stack0 <= tmp_stack +(not stack0)+1;
									tmp_stack <= tmp_stack +(not stack0)+1;
								end if;
								clean_tmp <='1';
							end if;
						end if;
						
					when others =>
						clean_tmp <= '0';
				end case;
			end if;
		end if;
		next_statek <= key_on(0);
	end process;
	
	process(CLOCK_50)
	begin
		if(key_conv = x"E06B" and bcd_out(19 downto 16)>"0000") then --aperta para esquerda
			toDisplay <= bcd_out(19 downto 4);
		elsif(key_conv = x"E074" and bcd_out(19 downto 16)>"0000") then --aperta para direita
			toDisplay <= bcd_out(15 downto 0);
		else
			toDisplay <= bcd_out(15 downto 0);
		end if;
	end process;
	
end struct;
