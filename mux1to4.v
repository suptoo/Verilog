module mux4to1 (
    input  [3:0] D,
    input  [1:0] S,
    output       Y
);

    assign Y = D[S];

endmodule
