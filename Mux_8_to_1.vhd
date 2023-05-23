----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 02:46:29 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           F : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
COMPONENT Decoder_3_to_8
PORT( EN : IN STD_LOGIC;
      I : in STD_LOGIC_VECTOR (2 downto 0);
      Y : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

signal G : STD_LOGIC_VECTOR (7 downto 0);
signal FL : STD_LOGIC;
begin
Decode_3_to_8_0 : Decoder_3_to_8
 port map(
    I => S,
    EN => EN,
    Y => G );


FL <= (D(0) AND G(0)) OR (D(1) AND G(1)) OR (D(2) AND G(2)) OR (D(3) AND G(3)) OR (D(4) AND G(4)) OR (D(5) AND G(5)) OR (D(6) AND G(6)) OR (D(7) AND G(7));
F <= EN AND FL;
end Behavioral;
