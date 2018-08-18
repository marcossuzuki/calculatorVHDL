LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY clock_div IS
	generic(	period 	  : integer :=50; --ms
				clock_freq : integer :=50 --Mhz
				);
	PORT ( Clock, E : IN STD_LOGIC;
			 clock_out: buffer STD_LOGIC:='0');
END clock_div;

ARCHITECTURE Behavior OF clock_div IS
	SIGNAL COUNT : STD_LOGIC_VECTOR(24 DOWNTO 0):=(others=>'0');
						--STD_LOGIC_VECTOR(0 TO 24);
	CONSTANT MAX : integer:=(period*clock_freq*10**3)/2;
						--STD_LOGIC_VECTOR(3 DOWNTO 0):="1111";
						--STD_LOGIC_VECTOR(0 TO 25):="10111110101111000010000000";
	
	BEGIN
	PROCESS(Clock, E)
		BEGIN
			IF (Clock'EVENT AND Clock = '1' AND E='1') THEN
				COUNT <= COUNT + 1;
				IF (COUNT = MAX)  THEN
					COUNT <= (others=>'0');
					clock_out <= not clock_out;
				END IF;
				
			END IF ;			
	END PROCESS;
	
END Behavior;