`timescale 1ns/1ps

module col1_tb;

  reg D;
  reg X;
  reg A;
  wire L;

  // Instantiate the Unit Under Test (UUT)
  col1 uut (
    .D(D),
    .X(X),
    .A(A),
    .L(L)
  );

  initial begin
    $dumpfile("col1.vcd");      // ✅ creates the waveform file
    $dumpvars(0, col1_tb);      // ✅ dumps all signals in this testbench

    D = 0;
    X = 0;
    A = 0;
    #20;

    A = 1;
    #20;

    X = 1;
    #20;

    D = 1;
    #20;

    X = 0;
    #20;

    A = 0;
    #20;

    $finish;
  end

  initial begin 
    $monitor("Time=%0t D=%d X=%d A=%d L=%d", $time, D, X, A, L);
  end

endmodule


//iverilog -o col1_out col1.v col1_tb.v
//vvp col1_out
//gtkwave col1.vcd


