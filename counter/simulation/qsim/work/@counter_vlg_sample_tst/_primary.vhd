library verilog;
use verilog.vl_types.all;
entity Counter_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        initValue       : in     vl_logic_vector(7 downto 0);
        stop            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Counter_vlg_sample_tst;
