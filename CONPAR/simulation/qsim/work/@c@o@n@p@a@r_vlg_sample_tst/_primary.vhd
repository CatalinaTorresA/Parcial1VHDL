library verilog;
use verilog.vl_types.all;
entity CONPAR_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        EN              : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CONPAR_vlg_sample_tst;
