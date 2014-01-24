----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:06 01/23/2014 
-- Design Name: 
-- Module Name:    Lab1_Leaf - Behavioral 
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

entity Lab1_Leaf is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Leaf;

architecture Behavioral of Lab1_Leaf is
signal B_NOT, A_NOT, C_NOT, F, G, H, I, J : STD_LOGIC;

begin

A_NOT<= not A;
B_NOT<= not B;
C_NOT<= not C;
F <= A_NOT and C;
G <= A_NOT and B;
H <= A and B_NOT and C_NOT;

X <= F or G or H;

I <= C and B_NOT;
J <= C_NOT and B;

Y <= I or J;

Z <= C;


end Behavioral;

