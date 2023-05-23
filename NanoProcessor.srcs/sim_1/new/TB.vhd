----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 04:30:27 PM
-- Design Name: 
-- Module Name: TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB is
--  Port ( );
end TB;

architecture Behavioral of TB is
COMPONENT MUX_2_to_1 
    Port ( D : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC;
           EN : in STD_LOGIC;
           F : out STD_LOGIC);
END COMPONENT;

SIGNAL S, EN, F : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR (1 downto 0);
begin
UUT : MUX_2_to_1
    PORT MAP(
    D => D,
    EN => EN,
    S => S,
    F => F);
PROCESS
begin
EN <= '1';
D <= "11";
S <= '1';
WAIT;
END PROCESS;

end Behavioral;
