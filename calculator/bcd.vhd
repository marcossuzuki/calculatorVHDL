-- baseado no
-- https://en.wikipedia.org/wiki/Double_dabble
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity bcd is
	generic (n : integer:= 8);
    Port ( binIN 	 	: in   STD_LOGIC_VECTOR (n-1 downto 0);
           bcd_out	: out  STD_LOGIC_VECTOR (n+3 downto 0)
          );
end bcd;

architecture Behavioral of bcd is

begin

bcd1: process(binIN)

  variable temp 	: STD_LOGIC_VECTOR (n-1 downto 0);  
  variable bcd 	: UNSIGNED (n+3 downto 0) := (others => '0');
  
	begin
		bcd := (others => '0');
		temp(n-1 downto 0) := binIN;
	 
	for i in 0 to (n-1) loop
		for j in 0 to (n/4) loop
			if bcd(4*j+3 downto 4*j) > 4 then 
				bcd(4*j+3 downto 4*j) := bcd(4*j+3 downto 4*j) + 3;
			end if;
		end loop;
		---- deslocamento a esquerda em 1 bit e concatena 1 bit
		bcd  := bcd(n+2 downto 0) & temp(n-1);    
		temp := temp(n-2 downto 0) & '0';
	 
	end loop;
 
    bcd_out 	<= STD_LOGIC_VECTOR(bcd(n+3 downto 0));
  
  end process bcd1;            
  
end Behavioral;