----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 02:40:11 PM
-- Design Name: 
-- Module Name: ADDER_SUBS_4_bit - Behavioral
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

entity ADDER_SUBS_4_bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CTR : in STD_LOGIC;
           C_out : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC);
end ADDER_SUBS_4_bit;

architecture Behavioral of ADDER_SUBS_4_bit is

COMPONENT RCA_4
      port  (
           A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           C_in : in STD_LOGIC;
           C_out : out STD_LOGIC;
           C_n_1 : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR(3 downto 0));
           
           END COMPONENT;

    SIGNAL C_out_n,C_out_n_1 : std_logic;
    SIGNAL B_2Scomp : std_logic_vector(3 downto 0);
    
begin

    RCA_4_0 :RCA_4
        port map(
        
                    A(0) => A(0),
                    A(1) => A(1),
                    A(2) => A(2),
                    A(3) => A(3),
                    B(0) => B_2Scomp(0),
                    B(1) => B_2Scomp(1),
                    B(2) => B_2Scomp(2),
                    B(3) => B_2Scomp(3),
                    C_in => CTR,
                    C_out => C_out_n,
                    C_n_1 => C_out_n_1,
                    S(0) => S(0),
                    S(1) => S(1),
                    S(2) => S(2),
                    S(3) => S(3)
                    );

    B_2Scomp(0) <= B(0) xor CTR;
    B_2Scomp(1) <= B(1) xor CTR;
    B_2Scomp(2) <= B(2) xor CTR;
    B_2Scomp(3) <= B(3) xor CTR;
    
    C_out <= C_out_n;
    
    Overflow <= C_out_n xor C_out_n_1;
    
    

end Behavioral;
