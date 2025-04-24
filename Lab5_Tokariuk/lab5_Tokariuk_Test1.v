module demux (
    input D,
    input [2:0] A,
    input EN,
    output reg Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7
);
    always @(*) begin
        if (EN) begin
            {Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7} = 8'bZZZZZZZZ;
        end else begin
            {Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7} = 8'b0;
            
            case (A)
                3'b000: Q0 = D;
                3'b001: Q1 = D;
                3'b010: Q2 = D;
                3'b011: Q3 = D;
                3'b100: Q4 = D;
                3'b101: Q5 = D;
                3'b110: Q6 = D;
                3'b111: Q7 = D;
            endcase
        end
    end
endmodule

