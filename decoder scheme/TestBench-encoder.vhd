--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:25:19 11/05/2019
-- Design Name:   
-- Module Name:   /home/jatin/Desktop/Xlinxfile/ADC_digital_part/TestBench-encoder.vhd
-- Project Name:  ADC_digital_part
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Design_encoder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestBench_encoder IS
END TestBench_encoder;
 
ARCHITECTURE behavior OF TestBench_encoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Design_encoder
    PORT(
         thermo_code : IN  std_logic_vector(14 downto 0);
         --rst : IN  std_logic;
         --clk : IN  std_logic;
         conv_data : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal thermo_code : std_logic_vector(14 downto 0) := (others => '0');
   --signal rst : std_logic := '0';
   --signal clk : std_logic := '0';

 	--Outputs
   signal conv_data : std_logic_vector(3 downto 0);

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Design_encoder PORT MAP (
          thermo_code => thermo_code,
          --rst => rst,
          --clk => clk,
          conv_data => conv_data
        );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 10 ns;	
		--thermo_code<="000000000011111";
      thermo_code<="000000000000000";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000000000001";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000000000011";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000000000111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000000001111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000000011111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000000111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000001111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000011111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000000111111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000001111111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000011111111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="000111111111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="001111111111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="011111111111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="111111110111111";
      --wait for clk_period*10;
      wait for 10 ns;
		thermo_code<="111111111111111";
		
       --insert stimulus here 

      wait;
   end process;

END;
