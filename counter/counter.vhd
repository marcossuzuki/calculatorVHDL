library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
	
    port (
          clock_in  : in  std_logic;
          enable    : in  std_logic;
          output    : out std_logic_vector(15 downto 0)
         );
end entity Counter;

architecture Counter_imp of Counter is
    signal count	: std_logic_vector(15 downto 0) := (others=>'0');
    constant max	: std_logic_vector(15 downto 0) := "0010011100001111";
begin 
    p1:process(clock_in, enable) is begin
			if (clock_in'event and clock_in='1' and enable = '1') then
				count <= count + 1;
				if(count = max) then
					count <= (others=>'0');
				end if;
				output <= count;
			end if;
    end process ;
end architecture Counter_imp;
