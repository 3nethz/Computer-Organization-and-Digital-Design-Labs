----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 12:25:55 PM
-- Design Name: 
-- Module Name: Slow_Clk_Sim - Behavioral
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

entity Slow_Clk_Sim is
--  Port ( );
end Slow_Clk_Sim;

architecture Behavioral of Slow_Clk_Sim is

    signal Clk_in: STD_LOGIC := '0';
    signal Clk_out: STD_LOGIC;

    constant Clk_period: time := 100 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.Slow_Clk
        port map (
            Clk_in => Clk_in,
            Clk_out => Clk_out
        );

    -- Clock process definitions
    Clk_process: process
    begin
        Clk_in <= '0';
        wait for Clk_period/2;
        Clk_in <= '1';
        wait for Clk_period/2;
    end process;

end Behavioral;