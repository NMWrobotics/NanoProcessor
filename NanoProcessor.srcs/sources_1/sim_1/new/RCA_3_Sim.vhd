----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 12:10:01 PM
-- Design Name: 
-- Module Name: RCA_3_Sim - Behavioral
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

entity RCA_3_Sim is
--  Port ( );
end RCA_3_Sim;

architecture Behavioral of RCA_3_Sim is

    COMPONENT RCA_3 
        PORT(
                   A : in STD_LOGIC_VECTOR(2 downto 0);
                   B : in STD_LOGIC_VECTOR(2 downto 0);
                   C_in : in STD_LOGIC;
                   C_out : out STD_LOGIC;
                   C_n_1 : out STD_LOGIC;
                   S : out STD_LOGIC_VECTOR(2 downto 0)
        );
    END COMPONENT;
    
    SIGNAL A,B,S : STD_LOGIC_VECTOR(2 downto 0);
    SIGNAL C_in,C_out : STD_LOGIC;

begin

    UUT: RCA_3 PORT MAP (
        C_in => C_in,
        
        A(0) => A(0),
        A(1) => A(1),
        A(2) => A(2),
        
        B(0) => B(0),
        B(1) => B(1),
        B(2) => B(2),
        
        S(0) => S(0),
        S(1) => S(1),
        S(2) => S(2),
        
        C_out => C_out
        
    );
    
    process
        begin
                                       
          C_in <= '0';
          A <= "100";
          B <= "001";
           wait;
    end process;


end Behavioral;