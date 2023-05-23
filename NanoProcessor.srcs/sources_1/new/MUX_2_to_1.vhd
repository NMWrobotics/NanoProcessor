----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 03:46:33 PM
-- Design Name: 
-- Module Name: MUX_2_to_1 - Behavioral
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

entity MUX_2_to_1 is
    Port ( D : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC;
           EN : in STD_LOGIC;
           F : out STD_LOGIC);
end MUX_2_to_1;

architecture Behavioral of MUX_2_to_1 is
COMPONENT Decode_1_to_2
    Port ( I : in STD_LOGIC;
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (1 downto 0));
END COMPONENT;
SIGNAL G : STD_LOGIC_VECTOR (1 downto 0);
SIGNAL FL : STD_LOGIC;
begin
Decode_1_to_2_0 : Decode_1_to_2
    PORT MAP(
        I => S,
        EN => EN,
        Y => G
    );
FL <= (D(0) AND G(0)) OR (D(1) AND G(1));
F <= FL AND EN;
end Behavioral;
