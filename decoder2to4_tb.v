`timescale 1ns/1ps

module decoder2to4_tb;

    reg [1:0] A;
    reg E;
    wire [3:0] Y;

    decoder2to4 uut (
        .A(A),
        .E(E),
        .Y(Y)
    );

    initial begin
        $dumpfile("decoder2to4.vcd");
        $dumpvars(0, decoder2to4_tb);

        A[1] = 0; A[0] = 0; E = 0;
        #20;
        E = 1;
        #20;
        A[0] = 1;
        #20;
        A[1] = 1;
        #20;
        A[0] = 0;
        #20;
    end

    initial begin
        $monitor("E=%d A[1]=%d A[0]=%d  Y[3]=%d Y[2]=%d Y[1]=%d Y[0]=%d\n",
                  E, A[1], A[0], Y[3], Y[2], Y[1], Y[0]);
    end

endmodule
//iverilog -o decoder_out decoder2to4.v decoder2to4_tb.v
//vvp decoder_out
//gtkwave decoder2to4.vcd
