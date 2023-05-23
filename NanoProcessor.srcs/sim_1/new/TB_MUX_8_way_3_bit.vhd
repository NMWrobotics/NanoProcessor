----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 01:51:13 PM
-- Design Name: 
-- Module Name: TB_MUX_8_way_3_bit - Behavioral
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

entity TB_MUX_8_way_3_bit is
--  Port ( );
end TB_MUX_8_way_3_bit;

architecture Behavioral of TB_MUX_8_way_3_bit is
COMPONENT MUX_8_way_4_bit
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
END COMPONENT;

SIGNAL D0, D1, D2, D3, D4, D5, D6, D7 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
SIGNAL S : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL EN : STD_LOGIC := '1';
SIGNAL F : STD_LOGIC_VECTOR (3 downto 0);

begin
UUT : MUX_8_way_4_bit
    PORT MAP(  D0 => D0,
               D1 => D1,
               D2 => D2,
               D3 => D3,
               D4 => D4,
               D5 => D0,
               D6 => D1,
               D7 => D2,
               S => S,
               EN => EN,
               F => F );
               
PROCESS
   begin
  -- EN <= '1';
   D0 <= "0011";
   D1 <= "1100";
   D2 <= "1010";
   D3 <= "0101";
   D4 <= "1111";
   D5 <= "1110";
   D6 <= "1101";
   D7 <= "1011";
   
   
   S <= "101";
   
   WAIT FOR 100ns;
   
   S <= "000";
   
   WAIT FOR 100ns;
   
   S <= "010";
   EN <= '1';   
   WAIT FOR 100ns;
   S <= "011";
 
   WAIT;
   
END PROCESS;

end Behavioral;
