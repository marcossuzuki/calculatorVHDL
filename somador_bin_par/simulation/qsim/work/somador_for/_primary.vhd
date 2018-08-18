library verilog;
use verilog.vl_types.all;
entity somador_for is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        ze              : in     vl_logic;
        s               : out    vl_logic_vector(7 downto 0);
        zs              : out    vl_logic
    );
end somador_for;
