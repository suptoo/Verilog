`timescale 1ns/1ns
module counter7_tb;
    reg clk=0, rst=1;
    wire [6:0] q;
    counter7 dut(clk,rst,q);
    always #10 clk = ~clk;
    initial begin
        $dumpfile("counter7.vcd"); $dumpvars(0,counter7_tb);
        #25  rst=0;
        #300 $finish;
    end
    initial $monitor("t=%0t q=%0d", $time, q);
endmodule
