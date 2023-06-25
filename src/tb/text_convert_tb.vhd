library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity TEXT_CONVERT_tb is
end entity;

architecture struct of TEXT_CONVERT_tb is

    constant C_CLK_PRD  : time := 37.037 ns;
	constant BAUD_RATE	: integer := 9600;

	
	component TEXT_CONVERT is
	port (
		CLK         		: in    std_logic;                      -- system clock
		RST         		: in    std_logic;                      -- system reset
	-- Serial interface
		SER_TX      		: out   std_logic;                      -- serial transmit
		SER_RX      		: in    std_logic;                      -- serial receive
	-- SRAM interface
		SRAM_ADDR			: out   std_logic_vector(17 downto 0);	-- sram address
		SRAM_DQ				: inout std_logic_vector(15 downto 0);	-- sram data
		SRAM_WE_N			: out   std_logic;						-- sram write enable 
		SRAM_OE_N       	: out   std_logic;						-- sram output enable
		SRAM_UB_N       	: out   std_logic;						-- sram upper byte enable 
		SRAM_LB_N       	: out   std_logic;						-- sram lower byte enable
		SRAM_CE_N       	: out   std_logic;						-- sram chip enable
		MODE				: in    std_logic;						-- key
		LED1 				: out   std_logic;						-- This led is always ON
		LED2				: out   std_logic;						-- This led is ON while receiving and OFF during transmiting
		LED3				: out   std_logic;						-- This led is ON while transmiting and OFF during receiving
		LED4				: out   std_logic;						-- This led is ON while MODE key is pressed		
		NUM_ONES			: out   std_logic_vector(6 downto 0);	-- This is the units digits
		NUM_TENS			: out   std_logic_vector(6 downto 0);	-- This is the tens digits
		NUM_HUNDS			: out   std_logic_vector(6 downto 0);	-- This is the hunds digits
		NUM_THOUS			: out   std_logic_vector(6 downto 0)	-- This is the thous digits
	);
	end component;
	
	component sim_sram is
	port (
		SRAM_ADDR		: in    std_logic_vector(17 downto 0);	-- sram address
		SRAM_DQ			: inout std_logic_vector(15 downto 0);	-- sram data
		SRAM_WE_N		: in    std_logic;						-- sram write enable 
		SRAM_OE_N       : in    std_logic;						-- sram output enable
		SRAM_UB_N       : in    std_logic;						-- sram upper byte enable 
		SRAM_LB_N       : in    std_logic;						-- sram lower byte enable
		SRAM_CE_N       : in    std_logic						-- sram chip enable
	);
	end component;
	
	component sim_uart_tx is
	generic (
		BAUD_RATE       : integer := BAUD_RATE
	);
	port (
		START_TRANSMIT	: in	boolean;
		SER_OUT			: out   std_logic
	);
	end component;

	component sim_uart_rx is
	generic (
		BAUD_RATE       : integer := BAUD_RATE
	);
	port (
		SER_IN			: in    std_logic;
		PAR_DATA		: out   std_logic_vector(7 downto 0);
		PAR_DATA_VALID	: out	boolean
	);
	end component;

    signal clk          : std_logic := '0';
    signal rst          : std_logic := '1';
    signal start        : std_logic := '0';
    signal data         : std_logic_vector(7 downto 0);
    signal tx           : std_logic;
    signal done         : std_logic;
	signal sram_addr	: std_logic_vector(17 downto 0);
	signal sram_dq		: std_logic_vector(15 downto 0);
	signal sram_we_n	: std_logic;
	signal sram_oe_n    : std_logic;
	signal sram_ub_n    : std_logic; 
	signal sram_lb_n    : std_logic;
	signal sram_ce_n    : std_logic;
	signal mode 		: std_logic := '1';
	signal ser_tx		: std_logic;
	signal bt_ser_tx	: std_logic;
--	signal bt_start_tx	: std_logic_vector(7 downto 0);
	signal bt_start_tx	: boolean := false;
	signal tx_done		: std_logic;
	signal bt_ser_rx	: std_logic;
	
begin

    clk <= not clk after C_CLK_PRD / 2;
    rst <= '0', '1' after 100 ns;

	dut_text_convert: TEXT_CONVERT

	port map (
		CLK         		=> clk,
		RST         		=> rst,
		SER_TX      		=> bt_ser_rx,
		SER_RX      		=> bt_ser_tx,
		SRAM_ADDR			=> sram_addr,
		SRAM_DQ				=> sram_dq,
		SRAM_WE_N			=> sram_we_n,
		SRAM_OE_N       	=> sram_oe_n,
		SRAM_UB_N       	=> sram_ub_n, 
		SRAM_LB_N       	=> sram_lb_n,
		SRAM_CE_N       	=> sram_ce_n,
		MODE				=> mode,
		LED1 				=> open,
		LED2				=> open,
		LED3				=> open,
		LED4				=> open,
		NUM_ONES			=> open,
		NUM_TENS			=> open,
		NUM_HUNDS			=> open,
		NUM_THOUS			=> open

	);

	sram_memory: sim_sram
	port map (
		SRAM_ADDR			=> sram_addr,
		SRAM_DQ				=> sram_dq,
		SRAM_WE_N			=> sram_we_n,
		SRAM_OE_N       	=> sram_oe_n,
		SRAM_UB_N       	=> sram_ub_n, 
		SRAM_LB_N       	=> sram_lb_n,
		SRAM_CE_N       	=> sram_ce_n
	);

-- ************* Simulate BT module *****************
	sim_uart_tx_inst: sim_uart_tx
	generic map (
		BAUD_RATE       	=> BAUD_RATE
	)
	port map (
		START_TRANSMIT		=> bt_start_tx,
		SER_OUT				=> bt_ser_tx
	);
	
	sim_uart_rx_inst: sim_uart_rx
	generic map (
		BAUD_RATE       	=> BAUD_RATE
	)
	port map (
		SER_IN				=> bt_ser_rx,
		PAR_DATA			=> open,
		PAR_DATA_VALID		=> open
	);
-- **************************************************
	
	process
	begin
		mode <= '1';
		wait for 200 us;

-- *************** press MODE key *************
		mode <= '0';
		wait for 200 us;
		mode <= '1';
-- ********************************************		

		wait for 1 ms;
		bt_start_tx <= true;
		
		wait for 20 ms;

-- *************** press MODE key *************
		mode <= '0';
		wait for 200 us;
		mode <= '1';
-- ********************************************		

		wait;

	end process;
		

end architecture;
    
