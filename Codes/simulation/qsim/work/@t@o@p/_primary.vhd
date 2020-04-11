library verilog;
use verilog.vl_types.all;
entity TOP is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        GPIO_COL        : out    vl_logic_vector(7 downto 0)
    );
end TOP;
