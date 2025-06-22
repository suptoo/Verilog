`timescale 1ns/1ns
module down4_simple_tb;
  reg clk=0,rst=1; wire [3:0] q;
  down4_simple dut(clk,rst,q);
  always #10 clk=~clk;
  initial begin
    $dumpfile("down4_simple.vcd");
     $dumpvars(0,down4_simple_tb);
    #15 rst=0; #160 $finish;
  end
endmodule
