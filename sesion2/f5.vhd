----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:39:34 03/15/2016 
-- Design Name: 
-- Module Name:    f5 - Behavioral 
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

entity f5 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f_invb : inout  STD_LOGIC;
           f_or1 : inout  STD_LOGIC;
           f_or2 : inout  STD_LOGIC;
           f_and : out  STD_LOGIC);
end f5;

architecture Behavioral of f5 is

begin
	f_invb <= not b;
	f_or1 <= a or c;
	f_or2 <= f_invb or c;
	f_and <= f_or1 and f_or2;

end Behavioral;

