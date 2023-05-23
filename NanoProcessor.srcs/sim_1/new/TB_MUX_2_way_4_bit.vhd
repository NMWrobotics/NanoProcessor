----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 03:59:59 PM
-- Design Name: 
-- Module Name: TB_MUX_2_way_4_bit - Behavioral
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

entity TB_MUX_2_way_4_bit is
--  Port ( );
end TB_MUX_2_way_4_bit;

architecture Behavioral of TB_MUX_2_way_4_bit is
COMPONENT MUX_2_way_4_bit
 Port (D0 : in STD_LOGIC_VECTOR (3 downto 0);
         D1 : in STD_LOGIC_VECTOR (3 downto 0);
         S : in STD_LOGIC;
         EN : in STD_LOGIC;
         F : out STD_LOGIC_VECTOR(3 downto 0));
END COMPONENT;

SIGNAL D0, D1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
SIGNAL S ,EN : STD_LOGIC;
SIGNAL F : STD_LOGIC_VECTOR(3 downto 0);

begin
UUT : MUX_2_way_4_bit
PORT MAP(
    D0 => D0,
    D1 => D1,
    S => S,
    EN => EN,
    F => F
    );
PROCESS
begin
    EN <= '1';
    D0 <= "1100";
    D1 <= "0010";
    S <= '0';
    WAIT;
END PROCESS;

end Behavioral;
