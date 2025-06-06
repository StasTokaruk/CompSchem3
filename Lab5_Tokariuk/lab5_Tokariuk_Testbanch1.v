`timescale 1ns/1ps

module tb_demux;

    reg D;
    reg [2:0] A;
    reg EN;

    wire Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7;
    demux uut (
        .D(D),
        .A(A),
        .EN(EN),
        .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3),
        .Q4(Q4), .Q5(Q5), .Q6(Q6), .Q7(Q7)
    );

    initial begin
        $display("Time\tEN\tD\tA\t\tQ");
        $monitor("%0t\t%b\t%b\t%b\t\t%b%b%b%b%b%b%b%b", 
            $time, EN, D, A,
            Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0);

        EN = 1; D = 1; A = 3'b000; 
        #10;

        EN = 0; D = 1; A = 3'b000; 
        #10;

        A = 3'b001;               
        #10;

        A = 3'b010;              
        #10;

        D = 0; A = 3'b011;        
        #10;

        EN = 1; A = 3'b100;       
        #10;

        $finish; 
    end

endmodule
