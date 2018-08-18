library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY somador_for IS
	GENERIC(n 	: INTEGER := 8 ); -- numero de bits
	PORT (x, y 	: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0); -- entradas do somador
			ze 	: IN STD_LOGIC; -- vem um
			s 		: OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0); -- saida
			zs 	: OUT STD_LOGIC); -- vai um
END somador_for;

ARCHITECTURE estrutural OF somador_for IS
	COMPONENT somador_completo
		PORT(A, B, Cin :  IN STD_LOGIC;
			S, Cout : OUT STD_LOGIC);

	END COMPONENT;
	
			
	SIGNAL v : STD_LOGIC_VECTOR (n DOWNTO 0); -- vai um interno
	BEGIN
		
		v(0) <= ze;
		zs <= v(n);
		
		abc: FOR i IN 0 TO n-1 GENERATE
			centro: somador_completo PORT MAP (x(i), y(i), v(i), s(i), v(i+1));
		END GENERATE abc;
		
END estrutural;