`timescale 1ns/1ns
module reg7_en_tb;
  reg clk=0,rst=1,en=0; reg [6:0] d; wire [6:0] q;
  reg7_en uut(clk,rst,en,d,q);
  always #10 clk=~clk;
  initial begin
    $dumpfile("reg7_en.vcd"); $dumpvars(0,reg7_en_tb);
    #15 rst=0; en=1; d=7'd55; #20;
    en=0; d=7'd99; #20;
    en=1; #20; $finish;
  end
  initial $monitor("t=%0t q=%d",$time,q);
endmodule
