library ieee;
use ieee.stD_logic_1164.all;

entity UART_RX is
    generic(
        G_DIV       : integer := 9600;
        MAX_BIT     : integer := 7;
        T_BIT       : integer := 27e6/9600; -- 27e6/G_DIV;
        T_BIT_HALF  : integer := 27e6/(2*9600)          
    );
    port(
        CLK         : in std_logic;
        RST         : in std_logic;
        RX          : in std_logic;
        DATA        : out std_logic_vector (7 downto 0) := (others => '0');
        DATA_VALID  : out std_logic := '0'
    );
end entity;

architecture behave of UART_RX is

    signal rst_counter  : std_logic := '0';
    signal t_bit_flg    : std_logic := '0';
    signal RX_sync      : std_logic := '0';
    signal Rx_idx       : integer  range 0 to MAX_BIT+1 := 0; -- +1 is for checking if the index > dada max index
    signal clk_counter  : integer  range 0 to T_BIT     := 0;
    signal max_cnt      : integer  range 0 to T_BIT     := T_BIT_half;

    component stabilizer is
    port (
        A       : in    std_logic;
        CLK     : in    std_logic;
        RST     : in    std_logic;
        A_SYNC  : out   std_logic
    );
    end component;
    
    type fsm_states is (
        idle, 
        get_start_bit, 
        get_data, 
        get_end_bit
    );
    signal fsm_state    :   fsm_states;
    
begin

    u1: stabilizer
    port map(
        A       => RX,
        CLK     => CLK, 
        RST     => RST,
        A_SYNC  => RX_sync
    );
    
    count_t_bit:process (CLK,RST)
    begin
        if(RST='1') then 
            clk_counter <= 0;
            t_bit_flg <= '0';       
        elsif rising_edge(CLK) then
            if rst_counter ='1' then
                clk_counter <= 0;
            elsif (clk_counter = max_cnt)  then
                clk_counter <= 0;
                t_bit_flg <= '1';
            else
                clk_counter <= clk_counter+1;
                t_bit_flg <= '0';
            end if;
        end if;     
    end process;

    generate_fsm: process(RST,CLK)
    begin       
        if(RST = '1') then
            fsm_state <= idle;
            
        elsif rising_edge(CLK) then
            case fsm_state is
            
                when idle =>
                    if RX_sync = '0'  then
                        fsm_state <= get_start_bit;
                        rst_counter <= '1';
                    else 
                        fsm_state <= idle;
                        rst_counter <= '0';
                    end if;
                    DATA_VALID <= '0';
                    max_cnt <= T_BIT_half;
                    Rx_idx <= 0;
                    
                when get_start_bit =>
                    if t_bit_flg = '0' and RX_sync ='0' then
                        fsm_state <= get_start_bit;
                    elsif t_bit_flg = '1' and RX_sync ='0' then -- recive process starts!
                        fsm_state <= get_data;
                        max_cnt <= T_BIT;
                    else 
                        fsm_state <= idle;
                    end if;
                    rst_counter <= '0';
                    
                when get_data =>
                    if Rx_idx > MAX_BIT then
                        fsm_state <= get_end_bit;
                        Rx_idx <= 0;
                    elsif t_bit_flg = '1' and (Rx_idx < MAX_BIT or Rx_idx = MAX_BIT) then
                        fsm_state <= get_data;
                        Rx_idx <= Rx_idx + 1;
                        DATA(Rx_idx) <= RX_sync ;
                    else 
                        fsm_state <= get_data;
                    end if;
                
                when get_end_bit =>
                    if RX_sync ='0' and t_bit_flg ='1' then -- error state 
                        fsm_state <= idle;
                    elsif t_bit_flg = '1' and RX_sync ='1' then
                        fsm_state <= idle;
                        DATA_VALID <= '1';
                    else 
                        fsm_state <= get_end_bit;
                    end if;
                    
            end case;
        end if; 
    end process;
end architecture;