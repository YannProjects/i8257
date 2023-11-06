----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.08.2023 21:23:54
-- Design Name: 
-- Module Name: DMA_Sim - Behavioral
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
use work.DMA_Sim_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DMA_Sim is
--  Port ( );
end DMA_Sim;

architecture Behavioral of DMA_Sim is

-- Control signal
signal m1n, mreqn, iorqn : std_logic;
signal rdn, wrn, wrram, rfrshn, haltn : std_logic;
signal cpu_addr : std_logic_vector (15 downto 0);
signal cpu_data_out, cpu_data_in, rom_data : std_logic_vector (7 downto 0);
signal cpu_resetn, cpu_clk : std_logic;

signal dma_addr_h, dma_addr_l, ram1_data, ram2_data : std_logic_vector (7 downto 0);
signal dma_data_in, dma_data_out, dma_int_regs : std_logic_vector (7 downto 0);
signal dma_data_in_ram1, dma_data_in_ram2, dma_data_out_ram1, dma_data_out_ram2 : std_logic_vector (7 downto 0);
signal dma_csn, dma_busreq, dma_busack, z80_busack, z80_busrq : std_logic;
signal ram1_cs, ram2_cs, rom_cs, ale : std_logic;
signal dma_request : std_logic_vector(3 downto 0);
signal ram1_wr, ram2_wr, dma_iown, dma_memwn : std_logic_vector(0 downto 0);
signal dma_clk : std_logic;
signal dma_reset, dma_mark, dma_tc : std_logic;
signal dma_iorn, dma_memrn : std_logic;
signal dackn, dackn_0, dackn_1, dreq_0, dreq_1, dreq : std_logic_vector(3 downto 0);
signal dma_addr : std_logic_vector(15 downto 0);
-- signal io_device_ready : std_logic := '1';

signal dma_channels_state : dma_all_channels_state_t;

-- burst_pause => Nombre de cycle d'horloge de pause entre 2 bursts DMA
-- burst_size => Taille du burst DMA a utiliser
-- wait_states => Pas utilise
signal channel_state_config : dma_all_channels_state_t := (
    (NORMAL, 600, 100, 0),
    (NORMAL, 600, 100, 0),
    (NORMAL, 600, 100, 0),
    (NORMAL, 600, 100, 0)
);

component IO_device_SIM
port(
    clk : in std_logic;
    resetn : in std_logic;
    dma_start : in std_logic;
    channel_state : dma_channel_state_t;
    dma_req : out std_logic;
    dma_ackn : in std_logic;
    dma_tc : in std_logic
);
end component;

begin
    -- 12 MHz CLK
    clk_process :process
    begin
        cpu_clk <= '0';
        wait for clk_period / 2;
        cpu_clk <= '1';
        wait for clk_period / 2;
    end process;
    
    u_z80 : entity work.T80se
    port map (
		RESET_n	=> cpu_resetn,
	 	CLK_n => cpu_clk,
	 	CLKEN => '1',
	 	WAIT_n => '1',
	 	INT_n => '1',
	 	NMI_n => '1',
	 	BUSRQ_n => z80_busrq,
	 	BUSAK_n => z80_busack,
	 	M1_n => m1n,
	 	MREQ_n => mreqn,
	 	IORQ_n => iorqn,
	 	RD_n => rdn,
	 	WR_n => wrn,
	 	RFSH_n => rfrshn,
	 	HALT_n => haltn,
	 	A => cpu_addr,
	 	DI => cpu_data_in,
	 	DO => cpu_data_out
    );
    
    p_addr_decode : process(cpu_addr)
    begin
        rom_cs <= '0';
        ram1_cs <= '0';
        ram2_cs <= '0';
        dma_csn <= '1';
        case cpu_addr(15 downto 11) is
            -- ROM : 0x0000 -> 0x3FFF (8 Ko)
            when "00000"|"00001"|"00010"|"00011"|"00100"|"00101"|"00110"|"00111" => rom_cs <= '1';
            -- RAM2 WR: 0x4000 -> 0x47FF (2 Ko)
            when "01000" => ram2_cs <= '1';
            -- RAM1 WR: 0x4800 -> 0x4FFF (2 Ko)
            when "01001" => ram1_cs <= '1';
            -- DMA config: 0x8000 -> 0xFFFF
            when "10000" => dma_csn <= '0';
            when others => 
        end case;
    end process;

    p_dma_trigger : process(cpu_resetn, cpu_addr)
    begin
        if cpu_resetn = '0' then
            dma_request <= X"0";
        else
            -- DMA req: 0x7000 -> 0x77FF 0x7F01..0x7F03 => Enable DRQ, 0x7F04..0x7F07 => Disable DRQ                                       
            if cpu_addr(15 downto 11) = "01110" then
                case cpu_addr(3 downto 0) is
                    when "0000" => dma_request(0) <= '1';
                    when "0100" => dma_request(0) <= '0';
                    when "0001" => dma_request(1) <= '1';
                    when "0101" => dma_request(1) <= '0';
                    when "0010" => dma_request(2) <= '1';
                    when "0110" => dma_request(2) <= '0';
                    when "0011" => dma_request(3) <= '1';
                    when "0111" => dma_request(3) <= '0';
                    when "1000" => channel_state_config(0).dma_mode <= NORMAL;
                    when "1100" => channel_state_config(0).dma_mode <= AUTORELOAD;
                    when "1001" => channel_state_config(1).dma_mode <= NORMAL;
                    when "1101" => channel_state_config(1).dma_mode <= AUTORELOAD;
                    when "1010" => channel_state_config(2).dma_mode <= NORMAL;
                    when "1110" => channel_state_config(2).dma_mode <= AUTORELOAD;
                    when "1011" => channel_state_config(3).dma_mode <= NORMAL;
                    when "1111" => channel_state_config(3).dma_mode <= AUTORELOAD;
                    when others =>                                                          
                end case;
            end if;
        end if;
    end process;    
    
    ram1_wr(0) <= '1' when (ram1_cs = '1' and wrn = '0' and mreqn='0') else '0';
    ram2_wr(0) <= '1' when (ram2_cs = '1' and wrn = '0') else '0';

    -- Process juste pour le canal 0 où on essaye de tranférer une grande qauntité de donnée et
    -- on redonne la main au CPU de temps en temps (à chaque fois que BURST_SIZE octets sont transférés)
    gen_dma_req : for i in 0 to 3 generate
        p_dma_reqx : IO_device_SIM port map (clk => cpu_clk, resetn => cpu_resetn, dma_start => dma_request(i), channel_state => channel_state_config(i),
            dma_req => dreq(i), dma_ackn => dackn(i), dma_tc => dma_tc);
    end generate;

    p_cpu_data_in_mux_comb : process(rom_cs, ram1_cs, ram2_cs, rom_data, ram1_data, ram2_data, dma_int_regs )
    begin
        if rom_cs = '1' then
            cpu_data_in <= rom_data;
        elsif ram1_cs = '1' then
            cpu_data_in <= ram1_data;
        elsif ram2_cs = '1' then
            cpu_data_in <= ram2_data;
        elsif dma_csn = '0' then
            cpu_data_in <= dma_int_regs;
        end if;
    end process;
    
    -- Pour simuler un wait state sur l'I/O device (doit être connecte à l'entree i_ready du controleur DMA)
    -- p_ready : process(dma_clk, dackn)
    -- begin
    --     if falling_edge(dma_clk) then
    --         if (dackn /= "1111") then
    --             io_device_ready <= not io_device_ready;
    --         else
    --             io_device_ready <= '1';
    --         end if;
    --     end if;
    -- end process;

    u_crom : entity work.dist_mem_gen_0
    port map (
       a => cpu_addr(12 downto 0),
       spo => rom_data
    );  
  
    u_dma : entity work.i8257
    port map (
        i_clk => dma_clk,
        i_reset => dma_reset,
        i_ready => '1',
        i_hdla => dma_busack,
        o_hrq => dma_busreq,
        i_drq => dreq,
        o_dackn => dackn,
        o_adstb => ale,
        i_As => cpu_addr(3 downto 0), -- Low addresses bus is input in slave mode
        o_Am => dma_addr_l, -- Address bus is output in master mode
        i_iorsn => rdn, -- IORn is input in slave mode
        i_iowsn => wrn, -- IOWn is input in slave mode
        o_iormn => dma_iorn,
        o_iowmn => dma_iown(0),
        i_Din => cpu_data_out,
        o_Dout => dma_int_regs,
        i_csn => dma_csn,
        o_memrn => dma_memrn,
        o_memwn => dma_memwn(0),
        o_mark => dma_mark,
        o_tc => dma_tc
    );
    
    dma_addr_h <= dma_int_regs when ale='1';
    dma_addr <= dma_addr_h & dma_addr_l;
  
    -- RAM 1: port A => CPU side, port B => DMA side
    u_rams_1 : entity work.blk_mem_gen_0
    port map (
        -- PORT A: CPU write/read side
        addra => cpu_addr(10 downto 0),
        clka => cpu_clk,
        dina => cpu_data_out,
        douta => ram1_data,
        wea => ram1_wr,
        -- PORT B: DMA read/write side (stands for the I/O device from DMA pov)
        addrb => dma_addr(10 downto 0),
        clkb => dma_clk,
        doutb => dma_data_out_ram1,
        dinb => dma_data_in_ram1,
        web => not dma_iown
    );
 
    -- RAM 2 used as DMA target: port A => CPU side (for checks), port B => DMA side
    u_rams_2 : entity work.blk_mem_gen_3
    port map (
        -- PORT A: CPU write/read side
        addra => cpu_addr(10 downto 0),
        clka => cpu_clk,
        dina => cpu_data_out,
        douta => ram2_data,
        wea => ram2_wr,
        -- PORT B: DMA read/write side (stands for the memory from DMA pov)
        addrb => dma_addr(10 downto 0),
        clkb => dma_clk,
        doutb => dma_data_out_ram2,
        dinb => dma_data_in_ram2,
        web => not dma_memwn
    );

    dma_data_in_ram1 <= dma_data_out_ram2;
    dma_data_in_ram2 <= dma_data_out_ram1;
    dma_clk <= not cpu_clk;
    dma_reset <= not cpu_resetn;
    z80_busrq <= not dma_busreq;
    dma_busack <= not z80_busack;
    cpu_resetn <= '0', '1' after 100 us;

end Behavioral;
