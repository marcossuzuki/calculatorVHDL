library verilog;
use verilog.vl_types.all;
entity somador_for_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(7 downto 0);
        zs              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end somador_for_vlg_check_tst;
