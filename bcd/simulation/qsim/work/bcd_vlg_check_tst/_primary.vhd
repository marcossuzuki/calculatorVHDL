library verilog;
use verilog.vl_types.all;
entity bcd_vlg_check_tst is
    port(
        bcd_out         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end bcd_vlg_check_tst;
