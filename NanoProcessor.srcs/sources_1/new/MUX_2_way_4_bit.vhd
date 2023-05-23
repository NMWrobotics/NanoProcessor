----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 03:32:52 PM
-- Design Name: 
-- Module Name: MUX_2_way_4_bit - Behavioral
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

entity MUX_2_way_4_bit is
    Port (D0 : in STD_LOGIC_VECTOR (3 downto 0);
          D1 : in STD_LOGIC_VECTOR (3 downto 0);
          S : in STD_LOGIC;
          EN : in STD_LOGIC;
          F : out STD_LOGIC_VECTOR(3 downto 0));
end MUX_2_way_4_bit;

architecture Behavioral of MUX_2_way_4_bit is
COMPONENT Mux_2_to_1
    Port ( D : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC;
           EN : in STD_LOGIC;
           F : out STD_LOGIC);
END COMPONENT;

begin
Mux_2_to_1_0 : Mux_2_to_1
    PORT MAP(
        D(0) => D0(0),
        D(1) => D1(0),
        S => S,
        EN => EN,
        F => F(0));
Mux_2_to_1_1 : Mux_2_to_1
    PORT MAP(
        D(0) => D0(1),
        D(1) => D1(1),
        S => S,
        EN => EN,
        F => F(1));
Mux_2_to_1_2 : Mux_2_to_1
    PORT MAP(
        D(0) => D0(2),
        D(1) => D1(2),
        S => S,
        EN => EN,
        F => F(2));
Mux_2_to_1_3 : Mux_2_to_1
    PORT MAP(
        D(0) => D0(3),
        D(1) => D1(3),
        S => S,
        EN => EN,
        F => F(3));

end Behavioral;
