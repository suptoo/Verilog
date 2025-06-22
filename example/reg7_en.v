module reg7_en(input CLK,input Reset,input En,input [6:0] D,output reg [6:0] Q);
  always @(posedge CLK or posedge Reset)
    if (Reset) Q<=0; else if (En) Q<=D;
endmodule
