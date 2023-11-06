----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2023 13:58:51
-- Design Name: 
-- Module Name: IO_device_SIM - Behavioral
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
use ieee.numeric_std.all;
use work.DMA_Sim_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IO_device_SIM is
port(
    clk : in std_logic;
    resetn : in std_logic;
    dma_start : in std_logic;
    channel_state : dma_channel_state_t;
    dma_req : out std_logic;
    dma_ackn : in std_logic;
    dma_tc : in std_logic
);
end IO_device_SIM;

architecture Behavioral of IO_device_SIM is

signal nb_dma_cycles_debug : integer;
signal dma_trigger_debug : std_logic;
signal dma_req_state_debug : dma_burst_t;

begin

    -- Process utiliser pour générer les signaux DMA request et gérer le DMA ack jusqu'à ce signal
    -- tous les octets aient été tranférrés.
    p_dma_req : process(clk)
    
    variable nb_dma_cycles, nb_pause_cycles : integer;
    variable dma_trigger : std_logic; 
    variable dma_req_state : dma_burst_t;
    
    begin
        if resetn = '0' then
            dma_trigger := '0';
            dma_req_state := IDLE;
        elsif falling_edge(clk) then
            case dma_req_state is
                when IDLE =>
                    dma_req <= '0';
                    if dma_start = '1' then
                        if dma_trigger = '0' then 
                            dma_trigger := '1';
                            nb_dma_cycles := channel_state.burst_size;
                            dma_req_state := BURST_RUNNING_1;
                            nb_pause_cycles := channel_state.burst_pause;
                        end if;
                    else
                        -- Resette le trigger DMA quand le signal DMA start repassse à 0 après être passé à 1
                        dma_trigger := '0';
                    end if;
                when BURST_RUNNING_1 =>
                    dma_req <= '1';
                    if dma_ackn = '0' then
                        nb_dma_cycles := nb_dma_cycles - 1;
                        if nb_dma_cycles = 0 then
                            nb_dma_cycles := channel_state.burst_size;
                            dma_req_state := BURST_PAUSE;
                        else
                            dma_req_state := BURST_RUNNING_2;
                        end if;
                    end if;
                when BURST_RUNNING_2 =>
                    if dma_tc = '1' and channel_state.dma_mode = NORMAL then
                        dma_req_state := IDLE;
                    elsif dma_ackn = '1' then
                        dma_req_state := BURST_RUNNING_1;
                    end if;
                when BURST_PAUSE =>
                    dma_req <= '0';
                    if dma_tc = '1' and channel_state.dma_mode = NORMAL then
                        dma_req_state := IDLE;
                    end if;
                    -- On attend la remontée de DACKn avant de refaire une nouvelle requete
                    nb_pause_cycles := nb_pause_cycles - 1;
                    if nb_pause_cycles = 0 then
                        nb_pause_cycles := channel_state.burst_pause;
                        dma_req_state := BURST_RUNNING_1;
                    end if;
                when others => dma_req_state := IDLE;
            end case;
        end if;
    
    nb_dma_cycles_debug <= nb_dma_cycles;
    dma_trigger_debug <= dma_trigger;
    dma_req_state_debug <= dma_req_state;        
        
    end process;

end Behavioral;
