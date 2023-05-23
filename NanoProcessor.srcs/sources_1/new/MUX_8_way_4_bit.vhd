----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 01:35:03 PM
-- Design Name: 
-- Module Name: MUX_8_way_4_bit - Behavioral
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

entity MUX_8_way_4_bit is
    Port ( D0 : in STD_LOGIC_VECTOR (3 downto 0);
           D1 : in STD_LOGIC_VECTOR (3 downto 0);
           D2 : in STD_LOGIC_VECTOR (3 downto 0);
           D3 : in STD_LOGIC_VECTOR (3 downto 0);
           D4 : in STD_LOGIC_VECTOR (3 downto 0);
           D5 : in STD_LOGIC_VECTOR (3 downto 0);
           D6 : in STD_LOGIC_VECTOR (3 downto 0);
           D7 : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           F : out STD_LOGIC_VECTOR(3 downto 0));
end MUX_8_way_4_bit;

architecture Behavioral of MUX_8_way_4_bit is
COMPONENT Mux_8_to_1
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           F : out STD_LOGIC);
END COMPONENT;
begin

Mux_8_to_1_0 : Mux_8_to_1
    PORT MAP(
        D(0) => D0(0),
        D(1) => D1(0),
        D(2) => D2(0),
        D(3) => D3(0),
        D(4) => D4(0),
        D(5) => D5(0),
        D(6) => D6(0),
        D(7) => D7(0),
        S => S,
        EN => EN,
        F => F(0));
Mux_8_to_1_1 : Mux_8_to_1
    PORT MAP(
        D(0) => D0(1),
        D(1) => D1(1),
        D(2) => D2(1),
        D(3) => D3(1),
        D(4) => D4(1),
        D(5) => D5(1),
        D(6) => D6(1),
        D(7) => D7(1),
        S => S,
        EN => EN,
        F => F(1));
Mux_8_to_1_2 : Mux_8_to_1
    PORT MAP(
        D(0) => D0(2),
        D(1) => D1(2),
        D(2) => D2(2),
        D(3) => D3(2),
        D(4) => D4(2),
        D(5) => D5(2),
        D(6) => D6(2),
        D(7) => D7(2),
        S => S,
        EN => EN,
        F => F(2));
Mux_8_to_1_3 : Mux_8_to_1
    PORT MAP(
        D(0) => D0(3),
        D(1) => D1(3),
        D(2) => D2(3),
        D(3) => D3(3),
        D(4) => D4(3),
        D(5) => D5(3),
        D(6) => D6(3),
        D(7) => D7(3),
        S => S,
        EN => EN,
        F => F(3));

end Behavioral;
