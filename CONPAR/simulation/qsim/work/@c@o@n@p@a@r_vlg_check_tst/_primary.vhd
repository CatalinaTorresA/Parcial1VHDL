library verilog;
use verilog.vl_types.all;
entity CONPAR_vlg_check_tst is
    port(
        count           : in     vl_logic_vector(5 downto 0);
        d1              : in     vl_logic_vector(6 downto 0);
        DEC             : in     vl_logic_vector(6 downto 0);
        L               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CONPAR_vlg_check_tst;
