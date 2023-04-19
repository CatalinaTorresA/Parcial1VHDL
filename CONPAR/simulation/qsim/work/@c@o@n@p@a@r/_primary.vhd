library verilog;
use verilog.vl_types.all;
entity CONPAR is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        EN              : in     vl_logic;
        start           : in     vl_logic;
        count           : out    vl_logic_vector(5 downto 0);
        L               : out    vl_logic;
        d1              : out    vl_logic_vector(6 downto 0);
        DEC             : out    vl_logic_vector(6 downto 0)
    );
end CONPAR;
