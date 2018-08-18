library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
USE IEEE.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity compl_dois is
	generic (n : integer:= 8);
	port(a : in STD_LOGIC_VECTOR(n-1 downto 0);
			saida: out STD_LOGIC_VECTOR(n-1 downto 0) );
end compl_dois;

architecture func of compl_dois is
	signal temp: STD_LOGIC_VECTOR(n-1 downto 0);
	begin
		temp<= not a;
		saida<=STD_LOGIC_VECTOR((temp+1));

end func;