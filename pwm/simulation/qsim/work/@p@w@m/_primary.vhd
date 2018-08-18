library verilog;
use verilog.vl_types.all;
entity PWM is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        ENABLE          : in     vl_logic;
        DUTY            : in     vl_logic_vector(7 downto 0);
        PWM_OUT         : out    vl_logic
    );
end PWM;
