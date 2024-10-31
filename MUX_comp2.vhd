----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use work.pakage.all;

entity MUX_comp2 is
   generic (k : integer := 256);
    Port ( c5s2 : in  std_logic_vector (k+1 downto 0);
           c6s2 : in  std_logic_vector(k+1 downto 0);
          -- c7s : in  STD_LOGIC_VECTOR (k+1 downto 0);
			  sel12 : in std_logic;
--			  sel4 : in std_logic;			  
           --sel3 : in  STD_LOGIC_VECTOR (1 downto 0);
           c9s2 : out  std_logic_vector (k+1 downto 0));
end MUX_comp2;

architecture arch_MUX_comp2 of MUX_comp2 is
--signal  sel1 : in std_logic;
begin
process(c5s2,c6s2,sel12)
begin

if (sel12 = '1' ) then
   c9s2 <= c5s2;
else
   c9s2 <= c6s2;	 
end if;

end process;
end arch_MUX_comp2;

