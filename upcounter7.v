module upcounter7 (
    input  wire       CLK,
    input  wire       Reset,
    output wire [6:0] q
);

    wire [6:0] d, q_int;

    register7 r1 (CLK, Reset, d, q_int);
    add1_7    a1 (q_int, d);

    assign q = q_int;

endmodule
