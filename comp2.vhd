library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use work.pakage.all; 

entity comp2 is
    generic (k : integer := 256);
    Port ( C2 : in  STD_LOGIC_VECTOR (k+1 downto 0);
           sel2: out std_logic);
end comp2;

architecture arch_comp2 of comp2 is

begin
process (C2)
begin
	if C2 >= P then
	   sel2 <='1';
	else
      sel2 <= '0';
   end if;
end process;

end arch_comp2;

