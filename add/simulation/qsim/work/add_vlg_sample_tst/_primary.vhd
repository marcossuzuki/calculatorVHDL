library verilog;
use verilog.vl_types.all;
entity add_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in1             : in     vl_logic_vector(0 to 7);
        in2             : in     vl_logic_vector(0 to 7);
        rst             : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end add_vlg_sample_tst;
