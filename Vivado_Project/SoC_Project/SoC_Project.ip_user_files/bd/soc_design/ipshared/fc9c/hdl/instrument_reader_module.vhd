library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity instrument_reader_module is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32
    );
    Port (
        S_AXI_ACLK      : in  STD_LOGIC;
        S_AXI_ARESETN   : in  STD_LOGIC; -- active low
        CONTROL_REG_IN  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        INSTRUMENT_OUT  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)
    );
end instrument_reader_module;

architecture Behavioral of instrument_reader_module is
    constant START_READ_BIT : integer := 0;
    -- define max as unsigned constant (0xAFFE)
    constant INSTRUMENT_MAX : unsigned(C_S_AXI_DATA_WIDTH-1 downto 0) := to_unsigned(16#AFFE#, C_S_AXI_DATA_WIDTH);

    -- use unsigned internally for arithmetic
    signal instrument_val  : unsigned(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

begin

    process (S_AXI_ACLK)
        variable cur_v  : std_logic := '0';
        variable last_v : std_logic := '0';
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                cur_v  := '0';
                last_v := '0';
                instrument_val <= (others => '0');
            else
                -- sample input into cur_v, keep last_v
                last_v := cur_v;
                cur_v  := CONTROL_REG_IN(START_READ_BIT);

                -- detect falling edge (1 -> 0)
                if (last_v = '1' and cur_v = '0') then
                    if instrument_val = INSTRUMENT_MAX then
                        instrument_val <= (others => '0');
                    else
                        instrument_val <= instrument_val + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;


    INSTRUMENT_OUT <= std_logic_vector(instrument_val);

end Behavioral;
