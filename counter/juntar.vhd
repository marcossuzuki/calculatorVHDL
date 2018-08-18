library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity juntar is
	 generic(a: integer:=8);
    port (
          clock1_in  : in  std_logic;
          enable1    : in  std_logic;
			 DUTY1		  : in std_logic_vector (a-1 downto 0);
          out1, out2, out3, out4    : out std_logic_vector(6 downto 0)
         );
end entity juntar;

architecture juntar_imp of juntar is
	 signal clock_out_div: STD_LOGIC;
    signal count_out	: std_logic_vector(15 downto 0);
	 signal bcd_out_conv : std_logic_vector(19 downto 0);
	 signal pwm_OUT1 : STD_LOGIC;

component seven_seg IS
	PORT ( bin_in : in STD_LOGIC_VECTOR(3 downto 0); 
			 enable : IN STD_LOGIC;
			 seg_out: OUT STD_LOGIC_VECTOR(6 downto 0));
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

component clock_div IS
	generic(	period 	  : integer :=50; --ms
				clock_freq : integer :=50 --Mhz
				);
	PORT ( Clock, E : IN STD_LOGIC;
			 clock_out: buffer STD_LOGIC:='0');
end component;

component bcd is
	generic (n : integer:= 8);
    Port ( binIN 	 	: in   STD_LOGIC_VECTOR (n-1 downto 0);
           bcd_out	: out  STD_LOGIC_VECTOR (n+3 downto 0)
          );
end component;

component Counter is
    port (
          clock_in  : in  std_logic;
          enable    : in  std_logic;
          output    : out std_logic_vector(15 downto 0)
         );
end component;
begin 
	L1: clock_div 	PORT MAP (Clock => clock1_in, E=> enable1, clock_out => clock_out_div);
	
	L2: Counter 	PORT MAP (clock_in => clock_out_div, enable => enable1, output => count_out);
	
	L3: bcd 			generic MAP (n => 16) 
						PORT MAP (binIN => count_out, bcd_out => bcd_out_conv);
	
	L4: pwm 			PORT MAP (CLK => clock1_in, RST => '0', ENABLE => enable1, DUTY => DUTY1, pwm_OUT => pwm_OUT1);
	
	-- saida no display de 7 segmentos
	A1: seven_seg PORT MAP (bin_in => bcd_out_conv(3 downto 0),   enable => pwm_OUT1, seg_out => out1);
	A2: seven_seg PORT MAP (bin_in => bcd_out_conv(7 downto 4),   enable => pwm_OUT1, seg_out => out2);
	A3: seven_seg PORT MAP (bin_in => bcd_out_conv(11 downto 8),  enable => pwm_OUT1, seg_out => out3);
	A4: seven_seg PORT MAP (bin_in => bcd_out_conv(15 downto 12), enable => pwm_OUT1, seg_out => out4);
end architecture juntar_imp;
