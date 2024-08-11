----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2023 11:07:31 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity Counter_tb is
end Counter_tb;

architecture Behavioral of Counter_tb is

    signal Dir : std_logic := '0';
    signal Res : std_logic := '0';
    signal Clk : std_logic := '0';
    signal Q : std_logic_vector(2 downto 0) := (others => '0'); -- Initialize Q to all zeroes

begin

    Counter_inst : entity work.Counter
        port map (
            Dir => Dir,
            Res => Res,
            Clk => Clk,
            Q => Q
        );

    -- Clock process
    Clk_process : process
    begin
        Clk <= '0';
        wait for 10 ns;  -- half of the clock period
        Clk <= '1';
        wait for 10 ns;  -- half of the clock period
    end process Clk_process;

    -- Monitor process
    Monitor_process : process
    begin
        wait for 10 ns;  -- wait for initial values to settle
        loop
            wait until rising_edge(Clk);
        end loop;
    end process Monitor_process;

end Behavioral;

