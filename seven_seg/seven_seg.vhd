LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY seven_seg IS
	PORT ( bin_in : in STD_LOGIC_VECTOR(3 downto 0); 
			 enable : IN STD_LOGIC;
			 seg_out: OUT STD_LOGIC_VECTOR(0 to 6));
END seven_seg;

ARCHITECTURE mix OF seven_seg IS
BEGIN
	
	process(bin_in, enable)
		begin
		if(enable='1') then
			case bin_in is
				when "0000" =>
					seg_out <= "1000000"; ---0
				when "0001" =>
					seg_out <= "1111001"; ---1
				when "0010" =>
					seg_out <= "0100100"; ---2
				when "0011" =>
					seg_out <= "0110000"; ---3
				when "0100" =>
					seg_out <= "0011001"; ---4
				when "0101" =>
					seg_out <= "0010010"; ---5
				when "0110" =>
					seg_out <= "0000010"; ---6
				when "0111" =>
					seg_out <= "1011000"; ---7
				when "1000" =>
					seg_out <= "0000000"; ---8
				when "1001" =>
					seg_out <= "0010000"; ---9
				when "1010" =>
					seg_out <= "0001000"; ---A
				when "1011" =>
					seg_out <= "0000011"; ---B
				when "1100" =>
					seg_out <= "1000110"; ---C
				when "1101" =>
					seg_out <= "0100001"; ---d
				when "1110" =>
					seg_out <= "0000110"; ---e
				when "1111" =>
					seg_out <= "0001110"; ---F
				when others =>
					seg_out <= "1111111"; ---null
			end case;
		elsif(enable='0') then
			seg_out <= "1111111"; ---null
		end if;
	end process;
	
END mix;