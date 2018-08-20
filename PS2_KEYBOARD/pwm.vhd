library 	IEEE;
use		IEEE.std_logic_1164.all;
use		IEEE.std_logic_unsigned.all;
 
entity PWM is
	 generic(n: integer:=8);
	 port ( 	
				CLK 		: in  std_logic;
				RST 		: in  std_logic;
				ENABLE  	: in  std_logic;
				DUTY   	: in  std_logic_vector (n-1 downto 0);
				PWM_OUT 	: out std_logic
			 );
end entity;
 
architecture impl of PWM is

	 signal CYCLE_OFF  : std_logic_vector (n-1 downto 0);
	 signal s_PWM_OUT  : std_logic:='0';
	 signal CONT       : std_logic_vector (n-1 downto 0):=(others=> '0');
	 constant all_ones : std_logic_vector (n-1 downto 0):= (others=> '1');

begin

	CYCLE_OFF <= all_ones - DUTY - '1';
	PWM_OUT 	 <= s_PWM_OUT;
	
	process(clk,RST)
	begin
	
		if( RST = '1' ) then
			s_PWM_OUT <= '0';
			CONT      <= (others=> '0');
			
		elsif( clk = '1' and clk'EVENT ) then		 
			
			if( ENABLE = '1' ) then
				CONT <= CONT + '1';
				
				if(CONT <= CYCLE_OFF)  then
					s_PWM_OUT <= '0';
				elsif (CONT > CYCLE_OFF) then
					s_PWM_OUT <= '1';
				elsif (CONT = all_ones) then
					s_PWM_OUT <= '0';
					CONT      <= (others=> '0');
				end if;
			else
				s_PWM_OUT <= '0'; 
				CONT      <= (others=> '0');
			
			end if;
		end if;
	end process;

end impl;