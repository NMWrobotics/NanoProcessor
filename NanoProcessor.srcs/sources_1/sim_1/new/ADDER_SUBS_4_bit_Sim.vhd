----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 03:31:57 PM
-- Design Name: 
-- Module Name: ADDER_SUBS_4_bit_Sim - Behavioral
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

entity ADDER_SUBS_4_bit_Sim is
--  Port ( );
end ADDER_SUBS_4_bit_Sim;

architecture Behavioral of ADDER_SUBS_4_bit_Sim is

    COMPONENT ADDER_SUBS_4_bit
    
    Port ( 
               A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               CTR : in STD_LOGIC;
               C_out : out STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               Overflow : out STD_LOGIC);
    
    END COMPONENT;
    
    SIGNAL CTR,C_out, Overflow : STD_LOGIC;
    SIGNAL A,B,S : STD_LOGIC_VECTOR(3 downto 0);
    

begin
    UUT: ADDER_SUBS_4_bit PORT MAP (
        
        A(0) => A(0),
        A(1) => A(1),
        A(2) => A(2),
        A(3) => A(3),
        B(0) => B(0),
        B(1) => B(1),
        B(2) => B(2),
        B(3) => B(3),
        S(0) => S(0),
        S(1) => S(1),
        S(2) => S(2),
        S(3) => S(3),
        CTR => CTR,
        C_out => C_out,
        Overflow => Overflow
        
    );
process
    begin
        
        CTR <= '1';
        A <= "0110";
        B <= "0010";
        wait;
        end Process;
end Behavioral;
