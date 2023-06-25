library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity uart_tb is
end entity;

architecture behave of uart_tb is
    constant C_CLK_PRD      : time      := 37.037 ns; -- for clk rate of 27M
    -- constant C_CLK_PRD   : time      := 20 ns; -- for clk rate of 50M
    constant BAUD_RATE      : integer   := 9600;
        
    component UART_TOP is
        generic (
            G_DIV           : integer := 5208
        );
        port (
            CLK             : in    std_logic;                      -- system clock
            RST             : in    std_logic;                      -- system reset
            SER_TX          : out   std_logic;                      -- serial transmit
            SER_RX          : in    std_logic;                      -- serial receive
            TX_DATA         : in    std_logic_vector(7 downto 0);   -- parallel transmit data
            START_TX        : in    std_logic;                      -- start transmit
            TX_DONE         : out   std_logic;                      -- transmit done
            RX_DATA         : out   std_logic_vector(7 downto 0);   -- parallel received data
            RX_DATA_VALID   : out   std_logic                       -- active high 1 CLK duration 
        );
    end component;
    
    component sim_uart_tx is
        generic (
            BAUD_RATE       : integer := 9600
        );
        port (
            START_TRANSMIT  : in    boolean;
            SER_OUT         : out   std_logic
        );
    end component;

    component sim_uart_rx is
        generic (
            BAUD_RATE       : integer := 9600
        );
        port (
            SER_IN          : in    std_logic;
            PAR_DATA        : out   std_logic_vector(7 downto 0);
            PAR_DATA_VALID  : out   boolean
        );
    end component;

    signal clk              : std_logic := '0';
    signal rst              : std_logic := '1';
    signal start            : std_logic := '0';
    signal data             : std_logic_vector(7 downto 0);
    signal tx               : std_logic;
    signal done             : std_logic;
    signal start_transmit   : boolean;
    signal uart_ser_rx      : std_logic;
    signal uart_ser_tx      : std_logic;
    
begin

    clk <= not clk after C_CLK_PRD / 2;
    rst <= '1', '0' after 100 ns;
    
    dut_UART_TOP: UART_TOP
    generic map (
        G_DIV           => BAUD_RATE
    )
    port map (
        CLK             => clk,
        RST             => rst,
        SER_TX          => uart_ser_tx,
        SER_RX          => uart_ser_rx,
        TX_DATA         => data,
        START_TX        => start,
        TX_DONE         => done,
        RX_DATA         => open,
        RX_DATA_VALID   => open 
    );

    sim_uart_tx_inst: sim_uart_tx
    generic map (
        BAUD_RATE       => BAUD_RATE
    )
    port map (
        START_TRANSMIT  => start_transmit,
        SER_OUT         => uart_ser_rx
    );
    
    sim_uart_rx_inst: sim_uart_rx
    generic map (
        BAUD_RATE       => BAUD_RATE
    )
    port map (
        SER_IN          => uart_ser_tx,
        PAR_DATA        => open,
        PAR_DATA_VALID  => open
    );

    
    process
    begin
        wait for 100 us;
        for i in 0 to 9 loop
            wait until rising_edge(clk);
            data <= conv_std_logic_vector(16#72#+i, data'length);
            start <= '1';
            wait until rising_edge(clk);
            start <= '0';
            wait until done = '1';
            wait for 200 us;
        end loop;
        wait;
    end process;
        
    start_transmit <= false, true after 100 us;

end architecture;
