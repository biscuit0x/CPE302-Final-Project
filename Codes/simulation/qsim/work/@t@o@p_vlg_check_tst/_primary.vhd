library verilog;
use verilog.vl_types.all;
entity TOP_vlg_check_tst is
    port(
        GPIO_COL        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end TOP_vlg_check_tst;
