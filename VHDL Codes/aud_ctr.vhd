library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--audio data controller

entity aud_ctr is 
	port(B_clk : in std_logic; 
		  LR_clk : in std_logic; 
		  d_in : out std_logic;
		  d_ready : out std_logic
		  );
end aud_ctr;


architecture rtl of aud_ctr is
	begin
		process (B_clk, LR_clk) begin
			if (rising_edge(B_clk)) then
				if(LR_clk = '1') then 
					d_in <= '1';
					d_ready <= '0';
				else 
					d_in <= '0';
					d_ready <= '1';
				end if;
		end if;
	end process;
end rtl;  