module poved_sum (Ain, Bin, Ci, Sout, Co);
  input [6:0] Ain, Bin;
  input Ci;
  output [6:0] Sout;
  output Co;

  reg [7:0] S;
  assign Sout = S[6:0];
  assign Co = S[7];

  always @(Ain, Bin, Ci)
    S = Ain + Bin + Ci;
endmodule

