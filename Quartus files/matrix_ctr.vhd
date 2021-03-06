library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity matrix_ctr is 
	port(clk50	: in std_logic;
		  clkLR : in std_logic;
		  reset : in std_logic;
		  data : inout std_logic_vector(7 downto 0);
		  col : out std_logic_vector(7 downto 0);
		  row : out std_logic_vector(7 downto 0)
		  );
end entity;

architecture rtl of matrix_ctr is 

component d_ff is
	port(clk, reset: in std_logic;
		  d :in std_logic_vector(7 downto 0);
		  q :inout std_logic_vector(7 downto 0)
		  );
end component;

component clk_mult1 is 
	port(clk : in std_logic; 
		  q : out std_logic
		  );
end component;

component clk_mult2 is 
	port(clk : in std_logic; 
		  q : out std_logic
		  );
end component;


type MEM is array(0 to 7) of std_logic_vector(7 downto 0);
	
signal col_RAM : MEM :=("00000000",
								"00000000",
								"00000000",
								"00000000",
								"00000000",
								"00000000",
								"00000000",
								"00000000");

signal row_RAM : MEM :=("01111111", 
								"10111111", 
								"11011111", 
								"11101111", 
								"11110111",
								"11111011",
								"11111101",
								"11111110");
	
signal i : integer range 0 to 7 := 0;
signal data_temp, col0, col1, col2, col3, col4, col5, col6 : std_logic_vector(7 downto 0);
signal clk_slow1 : std_logic;
signal clk_slow2 : std_logic;
	
begin
	display:process(clk_slow1) begin
		if(rising_edge(clk_slow1)) then
			if(reset = '1' or i = 7) then
				i <= 0;
			else 	
				i <= i + 1;
			
			end if;
		end if;
	end process display;
	row <= row_RAM(i);
	col <= col_RAM(i);
	
	slow_clk1 : clk_mult1 port map(clk50, clk_slow1);
	slow_clk2 : clk_mult2 port map(clkLR, clk_slow2);
	df0 : d_ff port map(clk_slow2, reset, data, col_RAM(0));			
	df1 : d_ff port map(clk_slow2, reset, col_RAM(0), col_RAM(1));
	df2 : d_ff port map(clk_slow2, reset, col_RAM(1), col_RAM(2));
	df3 : d_ff port map(clk_slow2, reset, col_RAM(2), col_RAM(3));
	df4 : d_ff port map(clk_slow2, reset, col_RAM(3), col_RAM(4));
	df5 : d_ff port map(clk_slow2, reset, col_RAM(4), col_RAM(5));
	df6 : d_ff port map(clk_slow2, reset, col_RAM(5), col_RAM(6));
	df7 : d_ff port map(clk_slow2, reset, col_RAM(6), col_RAM(7));
end rtl;