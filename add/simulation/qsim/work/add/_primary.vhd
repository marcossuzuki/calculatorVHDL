library verilog;
use verilog.vl_types.all;
entity add is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        in1             : in     vl_logic_vector(0 to 7);
        in2             : in     vl_logic_vector(0 to 7);
        output          : out    vl_logic_vector(0 to 7);
        start           : in     vl_logic;
        done            : out    vl_logic
    );
end add;
