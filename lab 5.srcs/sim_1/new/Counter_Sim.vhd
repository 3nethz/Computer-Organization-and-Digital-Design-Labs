----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2023 12:47:49 AM
-- Design Name: 
-- Module Name: Counter_Sim - Behavioral
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter_Sim is
end Counter_Sim;

architecture Behavioral of Counter_Sim is
    component Counter
        Port ( Dir : in STD_LOGIC;
               Res : in STD_LOGIC;
               Clk : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR (2 downto 0));
    end component;

    signal Dir, Res, Clk : std_logic;
    signal Q : std_logic_vector(2 downto 0);
    


    constant Clk_period : time := 10 ns;

begin
    UUT: Counter port map(
        Dir => Dir,
        Res => Res,
        Clk => Clk,
        Q => Q
    );

    Clk_process: process
    begin
        Clk <= '0';
        wait for Clk_period/2;
        Clk <= '1';
        wait for Clk_period/2;
    end process;

    process
    begin
    Res <= '1';
    Dir <= '1';
    
    wait for 10ns;
    Dir <= '1';
    Res <= '0';
    
    wait for 10ns;
    Res <= '0';
    
    wait for 10ns;
    Res <= '0';
    Dir <= '1';
    
    wait for 10ns;
    Dir <= '0';
    Res <= '0';
    
    wait for 10ns;
    Res <= '0';
    
    wait for 10ns;
    Res <= '0';
    Dir <= '1';
     
    wait for 10ns;
    Dir <= '1';
    Res <= '0';
    
    wait for 10ns;
    Res <= '0';
    
    wait for 10ns;
    Res <= '0';
    Dir <= '1';

    wait for 10ns;
    Dir <= '1';
    Res <= '0';
    
    
    wait for 10ns;
    Res <= '1';
    
    wait for 10ns;
    Res <= '0';
    Dir <= '1';
    
    wait for 400ns;
    Dir <= '0';
    wait;

    
    end process;                 
                      


end Behavioral;

