library verilog;
use verilog.vl_types.all;
entity clock_div is
    port(
        Clock           : in     vl_logic;
        E               : in     vl_logic;
        clock_out       : out    vl_logic
    );
end clock_div;
