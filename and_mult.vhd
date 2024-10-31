library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_mult is
    generic (k : integer := 256);
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC_VECTOR (k-1 downto 0);
           I1 : out  STD_LOGIC_VECTOR (k-1 downto 0));
end and_mult;

architecture arch_and_mult of and_mult is 

begin

		    and_gate: for i in 0 to k-1 generate
				  I1(i) <= Y(i) and X;
			 end generate and_gate;
end arch_and_mult;