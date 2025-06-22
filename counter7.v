module counter7 (
    input  wire       CLK,
    input  wire       Reset,
    output wire [6:0] q
);

    wire [6:0] d, q_int;

    register7 r1 (CLK, Reset, d, q_int);
    add1_7    a1 (q_int, d);

    assign q = q_int;

endmodule


module register7 (input CLK, input Reset, input [6:0] D, output reg [6:0] Q);
    always @(posedge CLK or posedge Reset)
        if (Reset) Q <= 0;
        else       Q <= D;
endmodule


module add1_7 (input [6:0] A, output [6:0] Y);
    assign Y = A + 1;
endmodule
