library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use work.pakage.all; 

entity comp1 is
    generic (k : integer := 256);
    Port ( C1 : in  STD_LOGIC_VECTOR (k+1 downto 0);
           sel3: out std_logic);
end comp1;

architecture arch_comp1 of comp1 is
--constant P: std_logic_vector(k-1 downto 0):=x"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"; --for 256 bit
--constant P2: std_logic_vector(k downto 0):= '1'&x"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF85E";

begin
process (C1)
begin
	if C1 >= P then
	   sel3 <='1';
	else
      sel3 <= '0';
   end if;
end process;

end arch_comp1;

