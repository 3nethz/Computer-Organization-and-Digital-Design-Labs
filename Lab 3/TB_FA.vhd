----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2023 04:47:06 PM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is
    COMPONENT FA
    PORT (A, B, C_in: IN STD_LOGIC;
            S, C_out : OUT STD_LOGIC);
    END COMPONENT;
    SIGNAL A, B, C_in : STD_LOGIC;
    SIGNAL S, C_out : STD_LOGIC;
begin
UUT: FA PORT MAP(
        A => A,
        B => B,
        C_in => C_in,
        S => S,
        C_out => C_out
        );
    process
    begin
        A <= '0';
        B <= '0';
        C_in <= '0';
        
        wait for 100ns;
        C_in <= '1';
    
        wait for 100ns;
        B <= '1';
        C_in <= '0';
    
        wait for 100ns;
        C_in <= '1';
        
        wait for 100ns;
        A <= '1';
        B <= '0';
        C_in <= '0';
        
        wait for 100ns;
        C_in <= '1';
        
        wait for 100ns;
        B <= '1';
        C_in <= '0';
        
        wait for 100ns;
        C_in <= '1';
    
        wait;
    end process;


end Behavioral;
