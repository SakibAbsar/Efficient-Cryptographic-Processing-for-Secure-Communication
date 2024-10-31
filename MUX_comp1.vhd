library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.pakage.all;

entity MUX_comp1 is
   generic (k : integer := 256);
    Port ( c5s : in  STD_LOGIC_VECTOR (k+1 downto 0);
           c6s : in  STD_LOGIC_VECTOR (k+1 downto 0);
          -- c7s : in  STD_LOGIC_VECTOR (k+1 downto 0);
			  sel2 : in std_logic;
--			  sel4 : in std_logic;			  
           --sel3 : in  STD_LOGIC_VECTOR (1 downto 0);
           c9s : out  STD_LOGIC_VECTOR (k+1 downto 0));
end MUX_comp1;

architecture arch_MUX_comp1 of MUX_comp1 is
--signal   sel2 : in std_logic;
begin
process(c5s, c6s, sel2)
begin

if (sel2 = '1' ) then
   c9s <= c5s;
else
   c9s <= c6s;	 
end if;

end process;
end arch_MUX_comp1;

