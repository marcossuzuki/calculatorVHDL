library verilog;
use verilog.vl_types.all;
entity PWM_vlg_check_tst is
    port(
        PWM_OUT         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end PWM_vlg_check_tst;
