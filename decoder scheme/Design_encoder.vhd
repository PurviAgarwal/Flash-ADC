----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:20:46 11/05/2019 
-- Design Name: 
-- Module Name:    Design_encoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Design_encoder is
    Port ( thermo_code : in  STD_LOGIC_VECTOR (14 downto 0);
	        --rst,clk : in std_logic;
           conv_data : out  STD_LOGIC_VECTOR (3 downto 0));
end Design_encoder;

architecture Behavioral of Design_encoder is
component mux is
	port(a, b, sel_line : in std_logic;
	      mux_out : out std_logic);
end component;
signal thermo1 :std_logic_vector(6 downto 0);--:=(others=>'0');
signal thermo2 :std_logic_vector(2 downto 0);--:=(others=>'0');
signal thermo3 :std_logic:='0';
--signal thermo5:std_logic;
begin
--p%rocess(clk,rst)
--begin
u7: mux port map (thermo_code(14), thermo_code(6), thermo_code(7),thermo1(6));
u6: mux port map (a => thermo_code(13), b => thermo_code(5), sel_line => thermo_code(7), mux_out => thermo1(5));
u5: mux port map (a => thermo_code(12), b => thermo_code(4), sel_line => thermo_code(7), mux_out => thermo1(4));
u4: mux port map (a => thermo_code(11), b => thermo_code(3), sel_line => thermo_code(7), mux_out => thermo1(3));
u3: mux port map (a => thermo_code(10), b => thermo_code(2), sel_line => thermo_code(7), mux_out => thermo1(2));
u2: mux port map (a => thermo_code(09), b => thermo_code(1), sel_line => thermo_code(7), mux_out => thermo1(1));
u1: mux port map (a => thermo_code(08), b => thermo_code(0), sel_line => thermo_code(7), mux_out => thermo1(0));
--end process;
conv_data(3)<=thermo_code(7);
--process(thermo1)
--begin
y3: mux port map (a => thermo1(06), b => thermo1(2), sel_line => thermo1(3), mux_out => thermo2(2));
y2: mux port map (a => thermo1(05), b => thermo1(1), sel_line => thermo1(3), mux_out => thermo2(1));
y1: mux port map (a => thermo1(04), b => thermo1(0), sel_line => thermo1(3), mux_out => thermo2(0));
--end process;
conv_data(2)<=thermo1(3);
conv_data(1)<=thermo2(1);
--process(thermo2
--begin
z1: mux port map(a => thermo2(02), b => thermo1(0), sel_line => thermo1(1), mux_out => thermo3);
--end process;
conv_data(0)<=thermo3;

end Behavioral;
