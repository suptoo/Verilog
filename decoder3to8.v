module decoder3to8 (
    input [2:0] A,
    input E,
    output [7:0] Y
);

    assign Y[7] = E &  A[2] &  A[1] &  A[0];
    assign Y[6] = E &  A[2] &  A[1] & ~A[0];
    assign Y[5] = E &  A[2] & ~A[1] &  A[0];
    assign Y[4] = E &  A[2] & ~A[1] & ~A[0];
    assign Y[3] = E & ~A[2] &  A[1] &  A[0];
    assign Y[2] = E & ~A[2] &  A[1] & ~A[0];
    assign Y[1] = E & ~A[2] & ~A[1] &  A[0];
    assign Y[0] = E & ~A[2] & ~A[1] & ~A[0];

endmodule
