`timescale 1ns/1ps

module mux4to1_tb;

    reg  [3:0] D;
    reg  [1:0] S;
    wire       Y;

    mux4to1 uut (.D(D), .S(S), .Y(Y));

    initial begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, mux4to1_tb);

        D = 4'b1010; S = 2'b00; #20;
        S = 2'b01;              #20;
        S = 2'b10;              #20;
        S = 2'b11;              #20;
        $finish;
    end

    initial
        $monitor("D=%b S=%b Y=%b", D, S, Y);

endmodule
