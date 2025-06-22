`timescale 1ns/1ns
module downcounter7_tb;
    reg clk=0, rst=1;
    wire [6:0] q;
    downcounter7 dut(clk,rst,q);
    always #10 clk = ~clk;
    initial begin
        $dumpfile("downcounter7.vcd"); $dumpvars(0,downcounter7_tb);
        #25  rst=0;
        #300 $finish;
    end
    initial $monitor("t=%0t q=%0d", $time, q);
endmodule
