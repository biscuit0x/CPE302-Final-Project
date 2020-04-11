library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TOP is 
	port(
			CLK : in std_logic; 
			RESET : in std_logic; 
			ADC_DATA : in std_logic;
			ADC_LR_CLK : in std_logic;
			ADC_BIT_CLK : in std_logic;
			GPIO_COL : out std_logic_vector(7 downto 0);
			GPIO_ROW : out std_logic_vector(7 downto 0)
		  ); 
end TOP;

architecture rtl of TOP is 

component aud_ctr is 
	port(B_clk : in std_logic; 
		  LR_clk : in std_logic; 
		  d_in : out std_logic;
		  d_ready : out std_logic
		  );
end component;

component SIPO is 
	port(clk : in std_logic; 
		  reset : in std_logic; 
		  en : in std_logic;
		  d : in std_logic;
		  q : inout std_logic_vector(15 downto 0)
		  );
end component;

component avg_cal is 
	port(clk : in std_logic; 
		  d1 : in std_logic_vector(15 downto 0);
		  d2 : in std_logic_vector(15 downto 0); 
		  ave : out std_logic_vector(15 downto 0)
		  );
end component;

component matrix_ctr is 
	port(clk50	: in std_logic;
	     clkLR : in std_logic;
		  reset : in std_logic;
		  data : in std_logic_vector(7 downto 0);
		  col : out std_logic_vector(7 downto 0);
		  row : out std_logic_vector(7 downto 0)
		  );
end component;

component aud_dec is 
	port(clk : in std_logic;
		  ave : in std_logic_vector(15 downto 0);
		  sig : out std_logic_vector(7 downto 0)
		  );
end component;

signal decoded : std_logic_vector(7 downto 0) := (others => '0');
signal average : std_logic_vector(15 downto 0) := (others=> '0');
signal data_r, data_l : std_logic_vector(15 downto 0);

begin
	AUD_REG_R : SIPO port map(ADC_BIT_CLK, RESET, ADC_LR_CLK, ADC_DATA, data_r);
	AUD_REG_L : SIPO port map(ADC_BIT_CLK, RESET, not ADC_LR_CLK, ADC_DATA, data_l);
	AUD_AVG : avg_cal port map(ADC_LR_CLK, data_r, data_l, average);
	AUD_DECODER : aud_dec port map(ADC_LR_CLK, average, decoded);
	DISPLAY : matrix_ctr port map(CLK, ADC_LR_CLK, RESET, decoded, GPIO_COL, GPIO_ROW);
end rtl;									