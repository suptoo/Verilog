`timescale 1ns/1ns
module down4_sync_tb;
  reg clk=0,rst=1; wire [3:0] q;
  down4_sync dut(clk,rst,q);
  always #10 clk=~clk;
  initial begin
    $dumpfile("down4_sync.vcd"); $dumpvars(0,down4_sync_tb);
    #15 rst=0; #160 $finish;
  end
endmodule
