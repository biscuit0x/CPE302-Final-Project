library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity avg_cal is 
	port(clk : in std_logic; 
		  d1 : in std_logic_vector(15 downto 0);
		  d2 : in std_logic_vector(15 downto 0); 
		  ave : out std_logic_vector(15 downto 0)
		  );
end avg_cal;

architecture rtl of avg_cal is
signal sum: std_logic_vector(16 downto 0) := (others => '0');
signal d1_temp : std_logic_vector(15 downto 0);
signal d2_temp : std_logic_vector(15 downto 0);

begin
	process (clk) begin
		if (rising_edge(clk)) then
			d2_temp <= d2;
		elsif (falling_edge(clk)) then
			d1_temp <= d1; 
		end if;
	end process;

	sum <= ("0" & d1_temp) + d2_temp;
	ave <= sum(16 downto 1) + sum(0);
end rtl;  