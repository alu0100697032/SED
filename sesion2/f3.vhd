----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:31:37 03/15/2016 
-- Design Name: 
-- Module Name:    f3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity f3 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f_and1 : inout  STD_LOGIC;
           f_and2 : inout  STD_LOGIC;
           f_or : out  STD_LOGIC);
end f3;

architecture Behavioral of f3 is

begin
	f_and1 <= a and b;
	f_and2 <= a and c;
	f_or <= f_and1 or f_and2;
end Behavioral;

