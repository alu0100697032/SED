--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:43:26 03/15/2016
-- Design Name:   
-- Module Name:   C:/Users/alu4406/practica2sesion2/practica2/f6_tb.vhd
-- Project Name:  practica2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: f6
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
 
ENTITY f6_tb IS
END f6_tb;
 
ARCHITECTURE behavior OF f6_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT f6
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         func : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal func : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: f6 PORT MAP (
          a => a,
          b => b,
          c => c,
          func => func
        );

   a <= not a after 10 ns;
	b <= not b after 20 ns;
	c <= not c after 30 ns;

END;
