
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

package DMA_Sim_Pack is

constant clk_period : time := 83 ns;
constant BURST_SIZE : integer := 40;
constant PAUSE_SIZE : integer := 100;

type dma_burst_t is (IDLE, BURST_RUNNING_1, BURST_PAUSE, BURST_RUNNING_2, NEXT_BURST_1, NEXT_BURST_2);
type dma_mode_t is (NORMAL, AUTORELOAD);
type dma_burst is array (0 to 3) of dma_burst_t;

type dma_channel_state_t is record
    dma_mode : dma_mode_t;
    burst_pause : integer;
    burst_size : integer;
    wait_states : integer;
end record;

type dma_all_channels_state_t is array(0 to 3) of dma_channel_state_t;

end;