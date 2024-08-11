----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 11:56:48 AM
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
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

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is
    component D_FF
        port (D, Res , Clk : in std_logic;
                Q, Qbar : out std_logic);
    end component;
    signal D, Res, Clk : std_logic;
    signal Q, Qbar : std_logic;
    
    constant Clk_period : time := 200 ns;
    
begin
    UUT: D_FF port map(
    D => D,
    Res => Res,
    Clk => Clk,
    Q => Q,
    Qbar => Qbar
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
    Res <= '0';
    D <= '1';
    wait for 100 ns;

    Res <= '1';
    wait for 100ns;

    D <= '0';
    wait for 100ns;

    D <= '1';
    wait for 100ns;
    
    end process;

end Behavioral;