module prienc4to2 (
    input  [3:0] D,
    output [1:0] Y
);

    assign Y = D[3] ? 2'b11 :
               D[2] ? 2'b10 :
               D[1] ? 2'b01 :
                       2'b00;

endmodule
