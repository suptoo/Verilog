`timescale 1ns/1ns
module reg16_tb;
  reg clk=0,rst=1; reg [15:0] d; wire [15:0] q;
  reg16 uut(clk,rst,d,q);
  always #10 clk=~clk;
  initial begin
    $dumpfile("reg16.vcd"); $dumpvars(0,reg16_tb);
    #15 rst=0; d=16'h1234; #20;
    d=16'hABCD; #20; $finish;
  end
  initial $monitor("t=%0t q=%h",$time,q);
endmodule
