`timescale 1ns/1ps

module prienc4to2_tb;

    reg  [3:0] D;
    wire [1:0] Y;

    prienc4to2 uut (.D(D), .Y(Y));

    initial begin
        $dumpfile("prienc4to2.vcd");
        $dumpvars(0, prienc4to2_tb);

        D = 4'b0000; #20;
        D = 4'b0001; #20;
        D = 4'b0010; #20;
        D = 4'b0100; #20;
        D = 4'b1000; #20;
        D = 4'b1010; #20;
        D = 4'b1110; #20;
        D = 4'b1111; #20;
        $finish;
    end

    initial
        $monitor("D=%b Y=%b", D, Y);

endmodule
//iverilog -o priencoder_out prienc4to2.v prienc4to2_tb.v
//vvp priencoder_out
//gtkwave prienc4to2.vcd

