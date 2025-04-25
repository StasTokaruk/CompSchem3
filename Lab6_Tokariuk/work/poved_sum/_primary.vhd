library verilog;
use verilog.vl_types.all;
entity poved_sum is
    port(
        Ain             : in     vl_logic_vector(6 downto 0);
        Bin             : in     vl_logic_vector(6 downto 0);
        Ci              : in     vl_logic;
        Sout            : out    vl_logic_vector(6 downto 0);
        Co              : out    vl_logic
    );
end poved_sum;
