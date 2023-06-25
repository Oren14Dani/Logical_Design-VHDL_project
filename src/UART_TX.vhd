library ieee;
use ieee.stD_logic_1164.all;

entity UART_TX is
    generic(
        G_DIV   : integer := 9600;
        MAX_BIT : integer := 7;
        T_BIT   : integer := 27e6/9600
    );
    port(
        CLK     :   in  std_logic;
        RST     :   in  std_logic;
        START   :   in  std_logic;
        DATA    :   in  std_logic_vector (7 downto 0);
        DONE    :   out std_logic := '0';
        TX      :   out std_logic := '0'
    );
end entity;

architecture behave of UART_TX is

    signal Tx_idx       : integer range 0 to MAX_BIT+1  := 0; -- +1 is for checking if the index > dada max index
    signal clk_counter  : integer range 0 to T_BIT      := 0;
    signal t_bit_flg    : std_logic := '0';
    
    type fsm_states is (
        idle, 
        send_start_bit, 
        send_data, 
        send_end_bit
    );
    
    signal fsm_state    :   fsm_states;

begin   

    count_t_bit:process (CLK,RST)
    begin
        if(RST = '1' ) then -- the sync rst enable only at the moment when the controller command the uart to start, this is neccasray for rest the counter.
            clk_counter <= 0;
            t_bit_flg <= '0';   
        elsif rising_edge(CLK) then
            if (START='1') then
                clk_counter <= 0;
            elsif (clk_counter = T_BIT)  then
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
            TX <= '1';
            DONE <= '0'; 
        elsif rising_edge(CLK) then
            case fsm_state is
            
                when idle =>
                    if START = '1'  then
                        fsm_state <= send_start_bit;
                    else 
                        fsm_state <= idle;
                    end if;
                    TX <= '1';
                    DONE <= '0';
                    
                when send_start_bit =>
                    if t_bit_flg = '1' then
                        fsm_state <= send_data;

                    else 
                        fsm_state <= send_start_bit;
                    end if;
                    TX <= '0';
                    DONE <= '0';
                    
                when send_data =>
                    if Tx_idx > MAX_BIT then
                        fsm_state <= send_end_bit;
                        Tx_idx<=0;
                    elsif t_bit_flg = '1' then
                        fsm_state <= send_data;
                        Tx_idx <= Tx_idx + 1;
                        TX<=DATA(Tx_idx);
                    else 
                        fsm_state <= send_data;
                        TX<=DATA(Tx_idx);
                    end if;
                    DONE <= '0';
                    
                when send_end_bit =>
                    if t_bit_flg = '1' then 
                        fsm_state <= idle;
                        DONE <= '1';
                    else 
                        fsm_state <= send_end_bit;
                        DONE <= '0';
                    end if;
                    TX <= '1';
                    
            end case;
        end if; 
    end process;

end architecture;