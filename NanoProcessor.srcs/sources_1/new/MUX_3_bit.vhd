----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2023 10:10:11 PM
-- Design Name: 
-- Module Name: MUX_3_bit - Behavioral
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

entity MUX_3_bit is
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           F : out STD_LOGIC);
end MUX_3_bit;

architecture Behavioral of MUX_3_bit is
COMPONENT Decoder_2_to_4
PORT( EN : IN STD_LOGIC;
      I : in STD_LOGIC_VECTOR (1 downto 0);
      Y : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;
signal G : STD_LOGIC_VECTOR (3 downto 0);
signal FL : STD_LOGIC;
begin
decoder_2_3_0 : Decoder_2_to_4
    port map(
    EN => EN,
    I => S,
    Y => G
    
    );
FL <= (D(0) AND G(0)) AND (D(1) AND G(1)) AND (D(2) AND G(2));
F <= FL AND EN;

end Behavioral;
