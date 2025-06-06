module testbench_sum;
  reg [6:0] Ain_r, Bin_r;
  reg Ci_r;
  wire [6:0] Ain, Bin;
  wire Ci;
  wire [6:0] res_stuk, res_poved;
  wire cm, cr;

  assign Ain = Ain_r;
  assign Bin = Bin_r;
  assign Ci = Ci_r;

  struk_sum struk_block(Ain, Bin, Ci, res_stuk, cm);
  poved_sum poved_block(Ain, Bin, Ci, res_poved, cr);

  initial begin
    $display("Time\tAin\tBin\tCi\tres_my\tcm\tres_ref\tcr");
    $monitor("%g\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
             $time, Ain, Bin, Ci, res_stuk, cm, res_poved, cr);
    #400 $finish;
  end

  initial begin
    Ain_r = 7'b0000001;
    #50 Ain_r = 7'b0000101;
    #50 Ain_r = 7'b0011001;
    #50 Ain_r = 7'b0101010;
    #50 Ain_r = 7'b1111111;
    #50 Ain_r = 7'b1010101;
    #50 Ain_r = 7'b0000000;
    #50 Ain_r = 7'b1110000;
  end

  initial begin
    Bin_r = 7'b0000010;
    #100 Bin_r = 7'b0001010;
    #100 Bin_r = 7'b1111111;
    #100 Bin_r = 7'b0000001;
  end

  initial begin
    Ci_r = 1'b0;
    #200 Ci_r = 1'b1;
  end
endmodule

