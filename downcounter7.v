module downcounter7 (
    input  wire       CLK,
    input  wire       Reset,
    output wire [6:0] q
);

    wire [6:0] d, q_int;

    register7 r1 (CLK, Reset, d, q_int);
    sub1_7    s1 (q_int, d);

    assign q = q_int;

endmodule


module sub1_7 (input [6:0] A, output [6:0] Y);
    assign Y = A - 1;
endmodule
