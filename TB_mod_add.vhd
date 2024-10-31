--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:45:40 05/06/2018
-- Design Name:   
-- Module Name:   C:/Users/pc/Desktop/mod_add_sub/mod_add_sub/TB_mod_add.vhd
-- Project Name:  mod_add_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add_PF_256_bit_new1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_mod_add IS
END TB_mod_add;
 
ARCHITECTURE behavior OF TB_mod_add IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add_PF_256_bit_new1
    PORT(
         A : IN  std_logic_vector(255 downto 0);
         B : IN  std_logic_vector(255 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         start : IN  std_logic;
         C : OUT  std_logic_vector(255 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(255 downto 0) := (others => '0');
   signal B : std_logic_vector(255 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal C : std_logic_vector(255 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_PF_256_bit_new1 PORT MAP (
          A => A,
          B => B,
          clk => clk,
          rst => rst,
          start => start,
          C => C
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

  
 -- Stimulus process
   stim_proc: process
   begin		
      rst <= '1';
      wait for clk_period;	
		rst <= '0';
		start <= '1';

		B <= x"79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798";
		A <= x"483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8";

--		X <= x"9BAE2D5BAC61E6EA5DE635BCA754B2564B7D78C45277CAD67E45C4CBBEA6E706";
--		Y <= x"9BAE2D5BAC61E6EA5DE635BCA754B2564B7D78C45277CAD67E45C4CBBEA6E706";

--		X <= x"34FB8147EED1C0FBE29EAD4D6C472EB4EF7B2191FDE09E494B2A9845FE3F605E"; --4px,y,z
--		Y <= x"C327B5D2636B32F27B051E4742B1BBD5324432C1000BFEDCA4368A29F6654152";
--		

      wait;
   end process;
END;	
