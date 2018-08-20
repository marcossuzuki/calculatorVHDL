LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY map_ps2 IS
	port( key_in	: in STD_LOGIC_VECTOR (15 downto 0);
			key_out	: out STD_LOGIC_VECTOR(15 downto 0));
END map_ps2;

ARCHITECTURE structural OF map_ps2 IS
BEGIN
	process(key_in)
		begin
			case key_in is
				when x"0070" => key_out <= x"0000"; ---0
				when x"0069" => key_out <= x"0001"; ---1
				when x"0072" => key_out <= x"0002"; ---2
				when x"007A" => key_out <= x"0003"; ---3
				when x"006B" => key_out <= x"0004"; ---4
				when x"0073" => key_out <= x"0005"; ---5
				when x"0074" => key_out <= x"0006"; ---6
				when x"006C" => key_out <= x"0007"; ---7
				when x"0075" => key_out <= x"0008"; ---8
				when x"007D" => key_out <= x"0009"; ---9
				when others => key_out <= key_in; ---outros
			end case;
	end process;
END structural;