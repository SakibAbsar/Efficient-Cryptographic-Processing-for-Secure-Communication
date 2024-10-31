library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use work.pakage.all; 

entity sub2 is
    generic (k : integer := 256);
    Port ( S2 : in  STD_LOGIC_VECTOR (k+1 downto 0);
           So2 : out  STD_LOGIC_VECTOR (k+1 downto 0));
end sub2;

architecture arch_sub2 of sub2 is

begin

 --So2 <= S2 - ('0'&P2);
 
 So2 <= S2 + (not ('0'&P)) + '1';

end arch_sub2;

