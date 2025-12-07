library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity temp_control_slave_lite_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end temp_control_slave_lite_v1_0_S00_AXI;

architecture arch_imp of temp_control_slave_lite_v1_0_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 1;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 4
	
	signal user_control_reg	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal sensor1_raw_reg	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal sensor2_raw_reg	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal backup_reg	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;

	 signal mem_logic  : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);

	 --State machine local parameters
	constant Idle : std_logic_vector(1 downto 0) := "00";
	constant Raddr: std_logic_vector(1 downto 0) := "10";
	constant Rdata: std_logic_vector(1 downto 0) := "11";
	constant Waddr: std_logic_vector(1 downto 0) := "10";
	constant Wdata: std_logic_vector(1 downto 0) := "11";
	 --State machine variables
	signal state_read : std_logic_vector(1 downto 0);
	signal state_write: std_logic_vector(1 downto 0); 
begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	    mem_logic     <= S_AXI_AWADDR(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB) when (S_AXI_AWVALID = '1') else axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);

	-- Implement Write state machine
	-- Outstanding write transactions are not supported by the slave i.e., master should assert bready to receive response on or before it starts sending the new transaction
	 process (S_AXI_ACLK)                                       
	   begin                                       
	     if rising_edge(S_AXI_ACLK) then                                       
	        if S_AXI_ARESETN = '0' then                                       
	          --asserting initial values to all 0's during reset                                       
	          axi_awready <= '0';                                       
	          axi_wready <= '0';                                       
	          axi_bvalid <= '0';                                       
	          axi_bresp <= (others => '0');                                       
	          state_write <= Idle;                                       
	        else                                       
	          case (state_write) is                                       
	             when Idle =>		--Initial state inidicating reset is done and ready to receive read/write transactions                                       
	               if (S_AXI_ARESETN = '1') then                                       
	                 axi_awready <= '1';                                       
	                 axi_wready <= '1';                                       
	                 state_write <= Waddr;                                       
	               else state_write <= state_write;                                       
	               end if;                                       
	             when Waddr =>		--At this state, slave is ready to receive address along with corresponding control signals and first data packet. Response valid is also handled at this state                                       
	               if (S_AXI_AWVALID = '1' and axi_awready = '1') then                                       
	                 axi_awaddr <= S_AXI_AWADDR;                                       
	                 if (S_AXI_WVALID = '1') then                                       
	                   axi_awready <= '1';                                       
	                   state_write <= Waddr;                                       
	                   axi_bvalid <= '1';                                       
	                 else                                       
	                   axi_awready <= '0';                                       
	                   state_write <= Wdata;                                       
	                   if (S_AXI_BREADY = '1' and axi_bvalid = '1') then                                       
	                     axi_bvalid <= '0';                                       
	                   end if;                                       
	                 end if;                                       
	               else                                        
	                 state_write <= state_write;                                       
	                 if (S_AXI_BREADY = '1' and axi_bvalid = '1') then                                       
	                   axi_bvalid <= '0';                                       
	                 end if;                                       
	               end if;                                       
	             when Wdata =>		--At this state, slave is ready to receive the data packets until the number of transfers is equal to burst length                                       
	               if (S_AXI_WVALID = '1') then                                       
	                 state_write <= Waddr;                                       
	                 axi_bvalid <= '1';                                       
	                 axi_awready <= '1';                                       
	               else                                       
	                 state_write <= state_write;                                       
	                 if (S_AXI_BREADY ='1' and axi_bvalid = '1') then                                       
	                   axi_bvalid <= '0';                                       
	                 end if;                                       
	               end if;                                       
	             when others =>      --reserved                                       
	               axi_awready <= '0';                                       
	               axi_wready <= '0';                                       
	               axi_bvalid <= '0';                                       
	           end case;                                       
	        end if;                                       
	      end if;                                                
	 end process;                                       
	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      user_control_reg <= (others => '0');
	      sensor1_raw_reg <= (others => '0');
	      sensor2_raw_reg <= (others => '0');
	      backup_reg <= (others => '0');
	    else
	      if (S_AXI_WVALID = '1') then
	          case (mem_logic) is
	          when b"00" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                user_control_reg(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01" =>

	          when b"10" =>

	          when b"11" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                backup_reg(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when others =>
	            user_control_reg <= user_control_reg;
	            sensor1_raw_reg <= sensor1_raw_reg;
	            sensor2_raw_reg <= sensor2_raw_reg;
	            backup_reg <= backup_reg;
	        end case;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement read state machine
	 process (S_AXI_ACLK)                                          
	   begin                                          
	     if rising_edge(S_AXI_ACLK) then                                           
	        if S_AXI_ARESETN = '0' then                                          
	          --asserting initial values to all 0's during reset                                          
	          axi_arready <= '0';                                          
	          axi_rvalid <= '0';                                          
	          axi_rresp <= (others => '0');                                          
	          state_read <= Idle;                                          
	        else                                          
	          case (state_read) is                                          
	            when Idle =>		--Initial state inidicating reset is done and ready to receive read/write transactions                                          
	                if (S_AXI_ARESETN = '1') then                                          
	                  axi_arready <= '1';                                          
	                  state_read <= Raddr;                                          
	                else state_read <= state_read;                                          
	                end if;                                          
	            when Raddr =>		--At this state, slave is ready to receive address along with corresponding control signals                                          
	                if (S_AXI_ARVALID = '1' and axi_arready = '1') then                                          
	                  state_read <= Rdata;                                          
	                  axi_rvalid <= '1';                                          
	                  axi_arready <= '0';                                          
	                  axi_araddr <= S_AXI_ARADDR;                                          
	                else                                          
	                  state_read <= state_read;                                          
	                end if;                                          
	            when Rdata =>		--At this state, slave is ready to send the data packets until the number of transfers is equal to burst length                                          
	                if (axi_rvalid = '1' and S_AXI_RREADY = '1') then                                          
	                  axi_rvalid <= '0';                                          
	                  axi_arready <= '1';                                          
	                  state_read <= Raddr;                                          
	                else                                          
	                  state_read <= state_read;                                          
	                end if;                                          
	            when others =>      --reserved                                          
	                axi_arready <= '0';                                          
	                axi_rvalid <= '0';                                          
	           end case;                                          
	         end if;                                          
	       end if;                                                   
	  end process;                                          
	-- Implement memory mapped register select and read logic generation
	 S_AXI_RDATA <= user_control_reg when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "00" ) else 
	 sensor1_raw_reg when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "01" ) else 
	 sensor2_raw_reg when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "10" ) else 
	 backup_reg when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "11" ) else 
	 (others => '0');
	 
	 
	 

	-- Add user logic here -------------------------------------
	
	-- Simple thermal model:
	-- - user_control_reg(0) = Heater 1 command (0=OFF, 1=ON)
	-- - user_control_reg(1) = Heater 2 command
	-- - Sensor 1 raw temp   -> sensor1_raw_reg(15 downto 0)
	-- - Sensor 2 raw temp   -> sensor2_raw_reg(15 downto 0)
	--
	-- Raw temperature model (as seen from OBC using formula):
	--   T_eng = 0.00162720689 * T_raw - 40
	--   0°C   ≈ T_raw = 24576 (0x6000)
	--   0.1°C ≈ 61 raw counts
	--
	-- Behaviour:
	--   - Each heater has its own timer.
	--   - When heater state changes (ON<->OFF), its timer is reset.
	--   - After a fixed time (STEP_TICKS), temperature changes by RAW_STEP.
	--   - As long as state stays constant, temp keeps stepping every STEP_TICKS.

    process (S_AXI_ACLK)
        -- Constants for thermal model
		constant CLK_FREQ_HZ  : integer := 50000000;      -- 50 MHz AXI clock
		constant STEP_TICKS   : integer := CLK_FREQ_HZ;   -- one step per second
		constant RAW_MIN      : integer := 0;             -- 0x0000 (Teng = -40°C )
		constant RAW_MAX      : integer := 65535;         -- 0xFFFF (eng = +66.6°C)
		constant RAW_START    : integer := 24576;         -- = 0°C
		constant RAW_STEP     : integer := 61;            -- Step per second (Teng = 0.1°C)

		-- State variables 
		variable s1_raw       : integer;
		variable s2_raw       : integer;
		variable h1_on        : std_logic;
		variable h2_on        : std_logic;
		variable h1_prev      : std_logic;
		variable h2_prev      : std_logic;
		variable tick_cnt1    : integer range 0 to STEP_TICKS-1;
		variable tick_cnt2    : integer range 0 to STEP_TICKS-1;
		
        begin
            if rising_edge(S_AXI_ACLK) then
                if S_AXI_ARESETN = '0' then
                    -- Reset thermal model
                     s1_raw    := RAW_START;
                     s2_raw    := RAW_START;
                    h1_on     := '0';
                    h2_on     := '0';
                    h1_prev   := '0';
                    h2_prev   := '0';
                    tick_cnt1 := 0;
                    tick_cnt2 := 0;
    
                    -- Initialize sensor registers to 0°C
                    sensor1_raw_reg(15 downto 0)  <= std_logic_vector(to_unsigned(RAW_START, 16));
                    sensor1_raw_reg(31 downto 16) <= (others => '0');
    
                    sensor2_raw_reg(15 downto 0)  <= std_logic_vector(to_unsigned(RAW_START, 16));
                    sensor2_raw_reg(31 downto 16) <= (others => '0');
    
                    -- (backup_reg is still part of AXI template as 4 is the minimum number of registers -Azmit but unused by this logic)
    
			     else
			         -- Check heater commands in user control reg (Heater 1 state = Bit 0; Heater 2 State = Bit 1)

                     h1_on := user_control_reg(0);
                     h2_on := user_control_reg(1);
                     
                     -- Check whether heater states changed an if so, restart counter
                     if h1_on /= h1_prev then
                        tick_cnt1 := 0;      
                        h1_prev   := h1_on;
                    end if;
    
                    if h2_on /= h2_prev then
                        tick_cnt2 := 0;       
                        h2_prev   := h2_on;
                    end if;
                    
    
                    -- Heater 1 and Sensor 1 timing and connection
                    if tick_cnt1 = STEP_TICKS-1 then
                        tick_cnt1 := 0;
    
                        -- apply temp step depending on heater 1 on or not
                        if h1_on = '1' then
                            s1_raw := s1_raw + RAW_STEP;
                        else
                            s1_raw := s1_raw - RAW_STEP;
                        end if;
    
                        -- Clamp to max and min range
                        if s1_raw > RAW_MAX then
                            s1_raw := RAW_MAX;
                        elsif s1_raw < RAW_MIN then
                            s1_raw := RAW_MIN;
                        end if;
    
                        -- Store to AXI registers
                        sensor1_raw_reg(15 downto 0)  <= std_logic_vector(to_unsigned(s1_raw, 16));
                        sensor1_raw_reg(31 downto 16) <= (others => '0');
                    else
                        tick_cnt1 := tick_cnt1 + 1;
                    end if;
    
                    -- Heater 2 and Sensor 2 timing and connection
                    if tick_cnt2 = STEP_TICKS-1 then
                        tick_cnt2 := 0;
    
                        -- Apply one step based on current heater 2 state
                        if h2_on = '1' then
                            s2_raw := s2_raw + RAW_STEP;
                        else
                            s2_raw := s2_raw - RAW_STEP;
                        end if;
    
                        -- Clamp to valid range
                        if s2_raw > RAW_MAX then
                            s2_raw := RAW_MAX;
                        elsif s2_raw < RAW_MIN then
                            s2_raw := RAW_MIN;
                        end if;
    
                        -- Store into AXI register
                        sensor2_raw_reg(15 downto 0)  <= std_logic_vector(to_unsigned(s2_raw, 16));
                        sensor2_raw_reg(31 downto 16) <= (others => '0');
                    else
                        tick_cnt2 := tick_cnt2 + 1;
                    end if;
    
                end if;
            end if;
        end process;

	-- User logic ends

end arch_imp;
