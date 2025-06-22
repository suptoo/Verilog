module reg16(input CLK,input Reset,input [15:0] D,output reg [15:0] Q);
  always @(posedge CLK or posedge Reset)
    if (Reset) Q<=0; else Q<=D;
endmodule
