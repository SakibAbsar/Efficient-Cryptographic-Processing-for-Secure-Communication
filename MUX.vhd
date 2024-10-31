library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity MUX is
    generic (k : integer := 256);
    Port ( Ain : in  STD_LOGIC_VECTOR (k-1 downto 0);
	        sel : in  STD_LOGIC_VECTOR (7 downto 0);
           Aout : out  STD_LOGIC);
end MUX;

architecture arch_MUX of MUX is

begin
process(sel, Ain)
begin

Aout <= Ain(to_integer( unsigned(sel)) );--convert std_logic_vector to integer
end process;

end arch_MUX;
