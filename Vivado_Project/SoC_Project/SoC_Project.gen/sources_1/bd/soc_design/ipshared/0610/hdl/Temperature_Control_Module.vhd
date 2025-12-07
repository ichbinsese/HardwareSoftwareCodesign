library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Temperature_Control_Module is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32
    );
    Port (
        S_AXI_ACLK      : in  STD_LOGIC;
        S_AXI_ARESETN   : in  STD_LOGIC; -- active low
        CONTROL_REG_IN  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SENSOR1_RAW_OUT  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SENSOR2_RAW_OUT  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)
    );
end Temperature_Control_Module;

architecture Behavioral of Temperature_Control_Module is
    -- Constants
    constant CLK_FREQ_HZ  : integer := 100000000;
    constant RAW_MIN      : integer := 0;
    constant RAW_MAX      : integer := 65535;
    constant RAW_START    : integer := 24576;
    constant RAW_STEP     : integer := 61;

    signal sensor1_raw : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal sensor2_raw : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ticks : integer := 0;

begin

process (S_AXI_ACLK)
    -- Internal state
    variable h1        : std_logic;
    variable h2        : std_logic;

begin
    if rising_edge(S_AXI_ACLK) then
        -- Reset everything
        if S_AXI_ARESETN = '0' then
            sensor1_raw  <= std_logic_vector(to_unsigned(RAW_START, C_S_AXI_DATA_WIDTH));
            sensor2_raw  <= std_logic_vector(to_unsigned(RAW_START, C_S_AXI_DATA_WIDTH));  
            ticks <= 0;      
        else
            h1 := CONTROL_REG_IN(0);
            h2 := CONTROL_REG_IN(1);
            
            if (ticks >= CLK_FREQ_HZ) then
                ticks <= 0;
                
                -- heater 1
                if(h1 = '1') then
                    if ((unsigned(sensor1_raw) + RAW_STEP) >= RAW_MAX) then
                        sensor1_raw <= std_logic_vector(to_unsigned(RAW_MAX, C_S_AXI_DATA_WIDTH));
                    else
                        sensor1_raw <= std_logic_vector(unsigned(sensor1_raw) + RAW_STEP);
                    end if;
                else
                    if ((unsigned(sensor1_raw) - RAW_STEP) <= RAW_MIN) then
                        sensor1_raw <= std_logic_vector(to_unsigned(RAW_MIN, C_S_AXI_DATA_WIDTH));
                    else
                        sensor1_raw <= std_logic_vector(unsigned(sensor1_raw) - RAW_STEP);
                    end if;
                end if;
                
                -- heater 2
                if(h2 = '1') then
                    if ((unsigned(sensor2_raw) + RAW_STEP) >= RAW_MAX) then
                        sensor2_raw <= std_logic_vector(to_unsigned(RAW_MAX, C_S_AXI_DATA_WIDTH));
                    else
                        sensor2_raw <= std_logic_vector(unsigned(sensor2_raw) + RAW_STEP);
                    end if;
                else
                    if ((unsigned(sensor2_raw) - RAW_STEP) <= RAW_MIN) then
                        sensor2_raw <= std_logic_vector(to_unsigned(RAW_MIN, C_S_AXI_DATA_WIDTH));
                    else
                        sensor2_raw <= std_logic_vector(unsigned(sensor2_raw) - RAW_STEP);
                    end if;
                end if;
                
            -- update ticks                
            else
                ticks <= ticks + 1;
            end if;
        end if;
    end if;
end process;

    SENSOR1_RAW_OUT <= sensor1_raw;
    SENSOR2_RAW_OUT <= sensor2_raw;

end Behavioral;
