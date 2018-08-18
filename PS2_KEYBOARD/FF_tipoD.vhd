LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FF_tipoD IS
	generic(n: integer:=16);
	PORT(D : IN STD_LOGIC_VECTOR(n-1 downto 0);
		  set : IN STD_LOGIC;
		  CLK, RESET : IN STD_LOGIC;
		  Q2 : BUFFER STD_LOGIC_VECTOR(n-1 downto 0));
END FF_tipoD;

ARCHITECTURE a OF FF_tipoD IS
BEGIN
	PROCESS -- Sem lista de sensibilidade
	BEGIN
		-- Aguarda borda de subida do clk
		WAIT UNTIL (CLK'EVENT AND CLK = '1');
		IF RESET = '1' THEN
			Q2 <= (others => '0');
		ELSIF (set='0') then
			Q2 <= D;
		else
			Q2 <= Q2;
		END IF;
	END PROCESS;
END a;