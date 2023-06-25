library ieee;
use ieee.stD_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity TEXT_CONVERT is
    port(
        -- system
        CLK         : in    std_logic;
        RST         : in    std_logic; -- (Active low)
        -- Bluetooth interface
        SER_RX      : in    std_logic; -- Serial data input
        SER_TX      : out   std_logic; -- Serial data output
        -- SRAM Signals
        SRAM_ADDR   : out   std_logic_vector (17 downto 0); -- pointer!! address out(active low!)
        SRAM_DQ     : inout std_logic_vector (15 downto 0); -- data in/out(active low)
        SRAM_WE_N   : out   std_logic ; -- write enable (active low)
        SRAM_OE_N   : out   std_logic ; -- output/read enable (active low)
        SRAM_CE_N   : out   std_logic ; -- chip select (active low, always work)
        SRAM_UB_N   : out   std_logic ; -- upper byte enable (active low)
        SRAM_LB_N   : out   std_logic ; -- lower byte enable (active low)
        --user interface Signals
        MODE        : in    std_logic ; -- Mode key (Active Low)
        LED1        : out   std_logic ; -- ON when the system is operating
        LED2        : out   std_logic ; -- ON while the system is in “Receiving mode”
        LED3        : out   std_logic ; -- ON while the system is transmitting data
        LED4        : out   std_logic ; -- ON only when KEY MODE is pressed
        NUM_ONES    : out   std_logic_vector (6 downto 0) := (others => '0');
        NUM_TENS    : out   std_logic_vector (6 downto 0) := (others => '0');
        NUM_HUNDS   : out   std_logic_vector (6 downto 0) := (others => '0');
        NUM_THOUS   : out   std_logic_vector (6 downto 0) := (others => '0')
    );
end entity;

architecture struct of TEXT_CONVERT is

    constant    BAUD_RATE   :   integer := 9600;
  
    component UART_TOP is
        generic(
            G_DIV           :   integer := BAUD_RATE -- BAUD_RATE
        );
        port(
            CLK             :   in  std_logic;
            RST             :   in  std_logic;
            SER_RX          :   in  std_logic;
            SER_TX          :   out std_logic;
            RX_DATA         :   out std_logic_vector (7 downto 0) ;
            RX_DATA_VALID   :   out std_logic;
            TX_DATA         :   in  std_logic_vector (7 downto 0);
            START_TX        :   in  std_logic;
            TX_DONE         :   out std_logic
        );
    end component;
    
    component CONTROLLER is
        port(
            -- system
            CLK                 : in    std_logic;
            RST                 : in    std_logic; --(Active high)
            -- SRAM Signals       
            SRAM_ADDR           : out   std_logic_vector(17 downto 0); -- pointer!! address out(active low!)
            SRAM_DQ             : inout std_logic_vector (15 downto 0); -- data in/out(active low)
            SRAM_WE_N           : out   std_logic; -- write enable (active low)
            SRAM_OE_N           : out   std_logic; -- output/read enable (active low)
            SRAM_CE_N           : out   std_logic; -- chip select (active low, always work)
            SRAM_UB_N           : out   std_logic; -- upper byte enable (active low)
            SRAM_LB_N           : out   std_logic; -- lower byte enable (active low)
            --User Signals
            DATA_TO_MEM         : in    std_logic_vector (7 downto 0); -- Data to be written into the SRAM
            DATA_TO_MEM_WR      : in    std_logic ; -- write signal (Active high ,1 CLK duration)
            DATA_FROM_MEM       : out   std_logic_vector (7 downto 0); -- Data read from SRAM
            DATA_FROM_MEM_VALID : out   std_logic; -- data valid (Active high, 1 SCLK duration)
            UART_TX_DONE        : in    std_logic; -- uart transmit done indication (Active high, 1 CLK duration)
            MODE                : in    std_logic; -- Mode key (Active Low)
            CHARS_NUM           : out   std_logic_vector (11 downto 0); -- 
            LED1                : out   std_logic ; -- ON all time that the system is operating
            LED2                : out   std_logic ; -- ON while the system is in “Receiving mode”
            LED3                : out   std_logic   -- ON while the system is transmitting data
        );
    end component ;
    
    component bin2bcd_12bit_sync is
        port ( 
            binIN       : in    STD_LOGIC_VECTOR (11 downto 0);     -- this is the binary number
            ones        : out   STD_LOGIC_VECTOR (3 downto 0);      -- this is the unity digit
            tenths      : out   STD_LOGIC_VECTOR (3 downto 0);      -- this is the tens digit
            hunderths   : out   STD_LOGIC_VECTOR (3 downto 0);      -- this is the hundreds digit
            thousands   : out   STD_LOGIC_VECTOR (3 downto 0);      -- 
            clk         : in    STD_LOGIC                           -- clock input
        );
    end component;
    
    component bcd_to_7seg is
        port(
            BCD_IN  : in std_logic_vector(3 downto 0);
            D_OUT   : out std_logic_vector(6 downto 0)
        );
    end component;
    
    
    signal rst_sig              :   std_logic; 
    signal data_to_mem          :   std_logic_vector (7 downto 0);
    signal data_to_mem_wr       :   std_logic;
    signal data_from_mem        :   std_logic_vector (7 downto 0);
    signal data_from_mem_valid  :   std_logic;
    signal uart_tx_done         :   std_logic;
    signal chars_num            :   std_logic_vector (11 downto 0);
    signal ones_sig             :   std_logic_vector (3 downto 0);
    signal tenths_sig           :   std_logic_vector (3 downto 0);
    signal hunderths_sig        :   std_logic_vector (3 downto 0);
    signal thousands_sig        :   std_logic_vector (3 downto 0);
    
begin

    rst_sig <= not RST;
    LED4 <= not(MODE);
    
    
    u1_uart: UART_TOP 
        generic map(
            G_DIV           => BAUD_RATE            
        )
        port map(
            CLK             =>  CLK,
            RST             =>  rst_sig,
            SER_RX          =>  SER_RX,
            SER_TX          =>  SER_TX,
            RX_DATA         =>  data_to_mem,
            RX_DATA_VALID   =>  data_to_mem_wr,
            TX_DATA         =>  data_from_mem,
            START_TX        =>  data_from_mem_valid,
            TX_DONE         =>  uart_tx_done
        );

    u2_controller : CONTROLLER
        port map(
            -- system
            CLK                 => CLK,
            RST                 => rst_sig,
            -- SRAM Signals    
            SRAM_ADDR           => SRAM_ADDR,
            SRAM_DQ             => SRAM_DQ,
            SRAM_WE_N           => SRAM_WE_N,
            SRAM_OE_N           => SRAM_OE_N,
            SRAM_CE_N           => SRAM_CE_N,
            SRAM_UB_N           => SRAM_UB_N,
            SRAM_LB_N           => SRAM_LB_N,
            --User Signals   
            DATA_TO_MEM         => data_to_mem,
            DATA_TO_MEM_WR      => data_to_mem_wr,
            DATA_FROM_MEM       => data_from_mem,
            DATA_FROM_MEM_VALID => data_from_mem_valid  ,
            UART_TX_DONE        => uart_tx_done,
            MODE                => MODE,
            CHARS_NUM           => chars_num,
            LED1                => LED1,
            LED2                => LED2,
            LED3                => LED3
        );
        
    u3_bin2bcd : bin2bcd_12bit_sync
        port map(
            binIN       => chars_num,
            ones        => ones_sig,
            tenths      => tenths_sig,
            hunderths   => hunderths_sig ,
            thousands   => thousands_sig ,
            clk         => CLK
        );  
    
    u4_bcd2seg_1 : bcd_to_7seg
        port map(
            BCD_IN  => ones_sig,
            D_OUT   => NUM_ONES
        );  
    u5_bcd2seg_10 : bcd_to_7seg
        port map(
            BCD_IN  => tenths_sig,
            D_OUT   => NUM_TENS
        );      
    u6_bcd2seg_100 : bcd_to_7seg
        port map(
            BCD_IN  => hunderths_sig,
            D_OUT   => NUM_HUNDS
        );       
    u7_bcd2seg_1000 : bcd_to_7seg
        port map(
            BCD_IN  => thousands_sig,
            D_OUT   => NUM_THOUS
        );  
        
        
end architecture;