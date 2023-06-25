library ieee;
use ieee.std_logic_1164.all;

entity stabilizer is
port (
    A       : in    std_logic;
    CLK     : in    std_logic;
    RST     : in    std_logic;
    A_SYNC  : out   std_logic
);
end entity;

architecture struct of stabilizer is

    component my_dff is
    port (
        D       : in    std_logic;
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        Q       : out   std_logic
    );
    end component;
    
    signal a_d1, a_d2       : std_logic;

begin

    process(CLK, RST)
    begin
        if RST = '1' then
            a_d1 <= '0';
            a_d2 <= '0';
        elsif rising_edge(CLK) then
            a_d1 <= A;
            a_d2 <= a_d1;
        end if;
    end process;
    
    A_SYNC <= a_d2;

end architecture;