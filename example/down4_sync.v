module down4_sync(input CLK,input Reset,output [3:0] Q);

  wire [3:0] d,q_int;
  reg4  r1(CLK,Reset,d,q_int);
  sub1_4 s1(q_int,d);
  assign Q=q_int;

endmodule

module reg4(input CLK,input Reset,input [3:0] D,output reg [3:0] Q);
  always @(posedge CLK or posedge Reset)
    if (Reset) Q<=4'hF; else Q<=D;
endmodule

module sub1_4(input [3:0] A,output [3:0] Y);
  assign Y=A-1;
endmodule
