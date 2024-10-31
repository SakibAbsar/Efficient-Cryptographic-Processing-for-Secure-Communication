library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity adder is
    generic (k : integer := 256);
    Port ( Cin : in  STD_LOGIC_VECTOR (k downto 0);
           Iin : in  STD_LOGIC_VECTOR (k-1 downto 0);
           Cout : out  STD_LOGIC_VECTOR (k+1 downto 0));
end adder;

architecture arch_adder of adder is

begin
Cout <= ('0'&Cin) + ("00"& Iin); 
end arch_adder;