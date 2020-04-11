library ieee; 
use ieee.std_logic_1164.all;

entity testing is
	port (clk500, clkLR0, rst0 : in std_logic;
		data_in0: in std_logic_vector(7 downto 0);
		row0, col0 : out std_logic_vector(7 downto 0));
		
end testing;

architecture testing of matrix_ctr is 

component matrix_ctr is 
	port (clk50, clkLR, reset : in std_logic;
	data_in : in std_logic_vector(7 downto 0); 
	row, col : out std_logic_vector(7 downto 0));
end component ;

 signal clk500, clkLR0, rst0 : std_logic;
 signal data_in0, row0, col0 : std_logic_vector(7 downto 0); 
 
begin
	u0 : entity matrix_ctr port map(clk500, clkLR0, rst0, data_in0, row0, col0);

inp : process
begin
data_in0 <= "11111111";
wait for 5ns;
data_in0 <="11111110";
wait for 5 ns;
data_in0 <= "11111100";
end process inp; 
end testing;

