----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:47:09 03/15/2016 
-- Design Name: 
-- Module Name:    f8 - Behavioral 
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

entity f8 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           f_or1 : inout  STD_LOGIC;
           f_or2 : inout  STD_LOGIC;
           f_inv_and : out  STD_LOGIC;
           f_and : inout  STD_LOGIC);
end f8;

architecture Behavioral of f8 is

begin
	f_or1 <= a or b;
	f_or2 <= c or d;
	f_and <= f_or1 and f_or2;
	f_inv_and <= not f_and;
end Behavioral;

