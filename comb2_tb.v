`timescale 1ns/1ps

module comb2_tb;

    reg  [3:0] A, B, C, D;
    wire [3:0] Arithmetic, Shift, Bitwise, Concatenation, Conditional;
    wire       Relational, Equality, Reduction, Logical;

    comb2 uut (
        .A(A), .B(B), .C(C), .D(D),
        .Arithmetic(Arithmetic),
        .Shift(Shift),
        .Relational(Relational),
        .Equality(Equality),
        .Bitwise(Bitwise),
        .Reduction(Reduction),
        .Logical(Logical),
        .Concatenation(Concatenation),
        .Conditional(Conditional)
    );

    initial begin
        $dumpfile("comb2.vcd");
        $dumpvars(0, comb2_tb);
    end

    initial begin
        A = 4'b1100;  B = 4'b0110;  C = 4'b0010;  D = 4'b1100;  #20;
        A = 4'b1010;  B = 4'b0011;  C = 4'b0001;  D = 4'b1111;  #20;
        $finish;
    end

    initial
        $monitor("T=%0t  A=%b B=%b C=%b D=%b | Arith=%b Shift=%b Rel=%b Eq=%b Bit=%b Red=%b Log=%b Concat=%b Cond=%b",
                 $time, A, B, C, D,
                 Arithmetic, Shift, Relational, Equality,
                 Bitwise, Reduction, Logical, Concatenation, Conditional);

endmodule

//iverilog -o colmb2_out comb2.v comb2_tb.v
//vvp colmb2_out
//gtkwave comb2.vcd