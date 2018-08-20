library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity mult is
	generic (n : integer:= 8);
    Port ( A, B 	 	: in   STD_LOGIC_VECTOR (n-1 downto 0);
           result		: out  STD_LOGIC_VECTOR (n-1 downto 0)
          );
end mult;

architecture Behavioral of mult is
	signal tmp : STD_LOGIC_VECTOR (2*n-1 downto 0);
begin

 
   tmp <= std_logic_vector(unsigned(A) * unsigned(B));
	result <= tmp(n-1 downto 0);

  
end Behavioral;