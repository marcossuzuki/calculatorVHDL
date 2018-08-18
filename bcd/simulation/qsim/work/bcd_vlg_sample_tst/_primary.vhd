library verilog;
use verilog.vl_types.all;
entity bcd_vlg_sample_tst is
    port(
        binIN           : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end bcd_vlg_sample_tst;
