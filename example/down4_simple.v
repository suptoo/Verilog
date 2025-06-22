module down4_simple(input CLK,input Reset,output reg [3:0] Q);
  always @(posedge CLK or posedge Reset)
    if (Reset) Q<=4'hF; else Q<=Q-1;
endmodule
