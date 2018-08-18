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
				when "0000000001110000" => key_out <= "0000000000000000"; ---0
				when "0000000001101001" => key_out <= "0000000000000001"; ---1
				when "0000000001110010" => key_out <= "0000000000000010"; ---2
				when "0000000001111010" => key_out <= "0000000000000011"; ---3
				when "0000000001101011" => key_out <= "0000000000000100"; ---4
				when "0000000001110011" => key_out <= "0000000000000101"; ---5
				when "0000000001110100" => key_out <= "0000000000000110"; ---6
				when "0000000001101100" => key_out <= "0000000000000111"; ---7
				when "0000000001110101" => key_out <= "0000000000001000"; ---8
				when "0000000001111101" => key_out <= "0000000000001001"; ---9
				when others => key_out <= key_in; ---null
			end case;
	end process;
END structural;