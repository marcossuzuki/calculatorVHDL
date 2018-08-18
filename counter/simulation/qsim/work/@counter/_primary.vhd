library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        stop            : in     vl_logic;
        initValue       : in     vl_logic_vector(7 downto 0);
        output          : out    vl_logic_vector(7 downto 0);
        finished        : out    vl_logic
    );
end Counter;
