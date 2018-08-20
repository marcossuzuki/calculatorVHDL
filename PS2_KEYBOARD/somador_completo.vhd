LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_completo IS

	PORT(A, B, Cin :  IN STD_LOGIC;
			S, Cout : OUT STD_LOGIC);
END somador_completo;

ARCHITECTURE LogicFunction OF somador_completo IS
BEGIN
	S <= (NOT A AND NOT B AND Cin) OR 
			(NOT A AND B AND NOT Cin) OR 
			(A AND B AND Cin) OR
			(A AND NOT B AND NOT Cin);
	Cout <= (B AND Cin) OR (A AND Cin) OR (A AND B);
END LogicFunction;