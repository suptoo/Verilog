`timescale 1ns/1ps

module decoder3to8_tb;

    reg [2:0] A;
    reg E;
    wire [7:0] Y;

    decoder3to8 uut (
        .A(A),
        .E(E),
        .Y(Y)
    );

    initial begin
        $dumpfile("decoder3to8.vcd");
        $dumpvars(0, decoder3to8_tb);

        E = 0; A = 3'b000;
        #20;
        E = 1;
        #20 A = 3'b001;
        #20 A = 3'b010;
        #20 A = 3'b011;
        #20 A = 3'b100;
        #20 A = 3'b101;
        #20 A = 3'b110;
        #20 A = 3'b111;
        #20;
    end

    initial begin
        $monitor("E=%b A=%b Y=%b", E, A, Y);
    end

endmodule
