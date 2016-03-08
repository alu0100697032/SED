--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:27:41 03/08/2016
-- Design Name:   
-- Module Name:   C:/Users/alu4406/practica2/functions_tb.vhd
-- Project Name:  practica2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: functions
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
 
ENTITY functions_tb IS
END functions_tb;
 
ARCHITECTURE behavior OF functions_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT functions
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         f_inv : OUT  std_logic;
         f_and2 : OUT  std_logic;
         f_or2 : OUT  std_logic;
         f_nand2 : OUT  std_logic;
         f_nor2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal f_inv : std_logic;
   signal f_and2 : std_logic;
   signal f_or2 : std_logic;
   signal f_nand2 : std_logic;
   signal f_nor2 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: functions PORT MAP (
          a => a,
          b => b,
          f_inv => f_inv,
          f_and2 => f_and2,
          f_or2 => f_or2,
          f_nand2 => f_nand2,
          f_nor2 => f_nor2
        );
		  
	a <= not a after 10 ns;
	b <= not b after 20 ns;

END;
