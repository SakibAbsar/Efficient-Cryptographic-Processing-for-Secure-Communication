library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_by_2 is
    generic (k : integer := 256);
    Port ( Ci : in  STD_LOGIC_VECTOR (k-1 downto 0);
           Co : out  STD_LOGIC_VECTOR (k downto 0));
end mult_by_2;

architecture arch_mult_by_2 of mult_by_2 is

begin

Co <= Ci(k-1 downto 0) & '0';

end arch_mult_by_2;

