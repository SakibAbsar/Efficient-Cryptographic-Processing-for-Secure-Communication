library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use work.pakage.all; 

entity sub1 is
    generic (k : integer := 256);
    Port ( S1 : in  STD_LOGIC_VECTOR (k+1 downto 0);
           So1 : out  STD_LOGIC_VECTOR (k+1 downto 0));
end sub1;

architecture arch_sub1 of sub1 is

begin

-- So1 <= S1 - ("00"&P);
 
 So1 <= S1 + (not("00"&P)) + '1';

end arch_sub1;

