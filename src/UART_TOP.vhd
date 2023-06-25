library ieee;
use ieee.stD_logic_1164.all;

entity UART_TOP is
    generic(
        G_DIV           :   integer := 9600 -- BAUD_RATE
    );
    port(
        CLK             :   in  std_logic;
        RST             :   in  std_logic;
        SER_RX          :   in  std_logic;
        SER_TX          :   out std_logic := '0';
        RX_DATA         :   out std_logic_vector (7 downto 0) := (others => '0');
        RX_DATA_VALID   :   out std_logic := '0';
        TX_DATA         :   in  std_logic_vector (7 downto 0);
        START_TX        :   in  std_logic;
        TX_DONE         :   out std_logic := '0'
    );
end entity;

architecture srtuct of UART_TOP is

    constant max_bit    : integer := 7;
    constant T_BIT      : integer := 27e6/G_DIV; -- 27e6/G_DIV = 2812;
    constant T_BIT_half : integer := T_BIT/2;
    
    component UART_RX is
        generic(
            G_DIV       : integer := G_DIV;
            MAX_BIT     : integer := max_bit;
            T_BIT       : integer := T_BIT; -- 27e6/G_DIV;
            T_BIT_HALF  : integer := T_BIT_half            
        );
        port(
            CLK         : in std_logic;
            RST         : in std_logic;
            RX          : in std_logic;
            DATA        : out std_logic_vector (7 downto 0) := (others => '0');
            DATA_VALID  : out std_logic := '0'
        );
    end component;

    component UART_TX is
        generic(
            G_DIV          : integer := G_DIV;
            MAX_BIT        : integer := max_bit;
            T_BIT          : integer := T_BIT -- 27e6/G_DIV;       
        );
        port(
            CLK     :   in  std_logic;
            RST     :   in  std_logic;
            START   :   in  std_logic;
            DATA    :   in  std_logic_vector (7 downto 0);
            DONE    :   out std_logic := '0';
            TX      :   out std_logic := '0'
        );
    end component;

begin
    
    u1_UART_RX: UART_RX 
        generic map(
            G_DIV   => G_DIV
        )
        port map(
            CLK         => CLK,
            RST         => RST,
            RX          => SER_RX,
            DATA        => RX_DATA,
            DATA_VALID  => RX_DATA_VALID
        );
    
    u2_UART_TX: UART_TX
        generic map(
            G_DIV   => G_DIV
        )
        port map(
            CLK     => CLK,
            RST     => RST,
            START   => START_TX,
            DATA    => TX_DATA,
            DONE    => TX_DONE,
            TX      => SER_TX
        );
end architecture;