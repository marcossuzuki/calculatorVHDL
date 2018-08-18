library verilog;
use verilog.vl_types.all;
entity bcd is
    port(
        binIN           : in     vl_logic_vector(11 downto 0);
        bcd_out         : out    vl_logic_vector(15 downto 0)
    );
end bcd;
