library ieee;
use ieee.stD_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity CONTROLLER is
    port(
        -- system
        CLK                 :   in  std_logic;
        RST                 :   in  std_logic; --(Active high)
        
        -- SRAM Signals
        SRAM_ADDR           :   out std_logic_vector(17 downto 0); -- pointer!! address out(active low)
        SRAM_DQ             :   inout std_logic_vector (15 downto 0); -- data in/out(active low)
        SRAM_WE_N           :   out std_logic := '1'; -- write enable (active low)
        SRAM_OE_N           :   out std_logic := '1'; -- output/read enable (active low)
        SRAM_CE_N           :   out std_logic := '0'; -- chip select (active low, always work)
        SRAM_UB_N           :   out std_logic := '0'; -- upper byte enable (active low)
        SRAM_LB_N           :   out std_logic := '0'; -- lower byte enable (active low)
        
        --User Signals
        DATA_TO_MEM         : in  std_logic_vector (7 downto 0); -- Data to be written into the SRAM
        DATA_TO_MEM_WR      : in  std_logic ; -- write signal (Active high ,1 CLK duration)
        DATA_FROM_MEM       : out std_logic_vector (7 downto 0); -- Data read from SRAM
        DATA_FROM_MEM_VALID : out std_logic := '0'; -- data valid (Active high, 1 SCLK duration)
        UART_TX_DONE        : in  std_logic; -- uart transmit done indication (Active high, 1 CLK duration)
        MODE                : in  std_logic; -- Mode key (Active Low)
        CHARS_NUM           : out std_logic_vector (11 downto 0):= (others => '0'); -- 
        LED1                : out std_logic := '1'; -- ON all time that the system is operating
        LED2                : out std_logic := '0'; -- ON while the system is in “Receiving mode”
        LED3                : out std_logic := '0'  -- ON while the system is transmitting data
    );
end entity;

architecture behave of CONTROLLER is

    type fsm_states is (
        idle, 
        recive,
        save_data,
        load_data,
        transmit
    );
    signal fsm_state        : fsm_states;
    
    constant max_address :integer range 0 to 262143 := 4095; --  2^18-1=262143 , 2^12-1=4095
                            -- the range is to limit the use of registers for this integer from 32 to 18,
    signal address_counter  : integer range 0 to max_address := 0 ;
    signal mode_sync        : std_logic := '1'; 
    signal mode_dev         : std_logic := '0'; -- (active high)
    signal sram_we_n_sig    : std_logic;
    signal sram_oe_n_sig    : std_logic;
            
    component stabilizer is
    port (
        A       : in    std_logic;
        CLK     : in    std_logic;
        RST     : in    std_logic;
        A_SYNC  : out   std_logic
    );
    end component;
    
    component down_der is
    port (
        ENABLE  : in    std_logic;
        A       : in    std_logic;
        CLK     : in    std_logic;
        RST     : in    std_logic;
        Q       : out   std_logic
    );
    end component;
    
begin

    u1: stabilizer
        port map(
            A       => MODE,
            CLK     => CLK, 
            RST     => RST,
            A_SYNC  => mode_sync
        );

    u2: down_der
        port map(
            ENABLE  => '1',
            A       => mode_sync,
            CLK     => CLK, 
            RST     => RST,
            Q       => mode_dev
        );
    
        
    generate_fsm: process(RST,CLK)
    begin       
        if(RST = '1') then
            fsm_state <= idle;
            sram_we_n_sig <= '1'; 
            sram_oe_n_sig <= '1'; 
            address_counter <= 0;
        
        elsif rising_edge(CLK) then
            case fsm_state is
            
                when idle =>
                    if mode_dev ='1' then
                        fsm_state <= recive;
                    else 
                        fsm_state <= idle;
                    end if;
                    sram_we_n_sig <='1'; 
                    sram_oe_n_sig <='1';    
                    DATA_FROM_MEM_VALID <= '0';
                    LED2 <= '0';
                    LED3 <= '0';
                    
                when recive =>
                   if DATA_TO_MEM_WR='1'  then
                        fsm_state <= save_data;
                        sram_we_n_sig <='0'; -- prepare for write
                        sram_oe_n_sig <='1';  
                    elsif(mode_dev ='1') and (address_counter > 0)then 
                        address_counter <= address_counter - 1; -- the counter was set to get a new byte, so this decrease neccerary to go back for valid data
                        sram_we_n_sig <='1'; --prepare for read
                        sram_oe_n_sig <='0';
                        fsm_state <= load_data;   
                    else 
                        fsm_state <= recive;
                    end if;
                    LED2 <= '1';
                    LED3 <= '0';
                    
                when save_data =>
                    if (address_counter < max_address)then 
                        address_counter <= address_counter+1;
                    elsif (address_counter = max_address) then 
                        report "memory full ";
                    end if; 
                    LED2 <= '1';
                    LED3 <= '0';
	                 sram_we_n_sig <='1'; -- close writing process
                    sram_oe_n_sig <='1';		  
                    fsm_state <= recive;
                    
                when load_data =>
                    if address_counter >= 0 then -- check that data is not empty                    
                        DATA_FROM_MEM_VALID <= '1'; -- command the uart to start transmitt
                        fsm_state <= transmit;      
                    else
                        report "memory empty"; -- this case happend while you are in the end of the loop of transmitting data 
                        sram_oe_n_sig <='1'; -- disenable the ability of reading from the sram
                        sram_we_n_sig <='1';
                        DATA_FROM_MEM_VALID <= '0';
                        fsm_state <= recive;
                    end if;
                    LED2 <= '0';
                    LED3 <= '0';                    
                
                when transmit =>
                    if UART_TX_DONE = '1' then 
                        if(address_counter = 0) then
                            sram_oe_n_sig <='1';
                            fsm_state <= recive;    
                        else    
                            address_counter <= address_counter-1;
                            fsm_state <= load_data; 
                        end if;
                    else
                        fsm_state <= transmit;      
                    end if;
                    DATA_FROM_MEM_VALID <= '0';
					LED2 <= '0';
                    LED3 <= '1';
					
            end case;
        end if;
    end process;

    DATA_FROM_MEM <= SRAM_DQ(7 downto 0) when sram_oe_n_sig = '0' and sram_we_n_sig = '1' else (others => 'Z');
	-- DATA_FROM_MEM <= conv_std_logic_vector(address_counter +97,8) when sram_oe_n_sig = '0' and sram_we_n_sig = '1' else (others => 'Z');
    SRAM_DQ (7 downto 0) <= DATA_TO_MEM when  sram_oe_n_sig = '1' and sram_we_n_sig = '0' else (others => 'Z');
    SRAM_DQ(15 downto 8) <= SRAM_DQ(7 downto 0); -- disable error on quartus.
    SRAM_OE_N <= sram_oe_n_sig;
    SRAM_WE_N <= sram_we_n_sig;
    SRAM_ADDR <= conv_std_logic_vector(address_counter , 18);-- pointer to mem
    CHARS_NUM <= conv_std_logic_vector(address_counter , 12); 
    
end architecture;