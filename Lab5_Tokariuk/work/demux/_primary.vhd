library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        D               : in     vl_logic;
        A               : in     vl_logic_vector(2 downto 0);
        EN              : in     vl_logic;
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        Q4              : out    vl_logic;
        Q5              : out    vl_logic;
        Q6              : out    vl_logic;
        Q7              : out    vl_logic
    );
end demux;
