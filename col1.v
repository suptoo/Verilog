
`timescale 1ns/1ps      // good practice even in the design file

module col1 (
    input  D,
    input  X,
    input  A,
    output L
);

assign L = (~D & ~X &  A) |
           (~D &  X &  A) |
           ( D & ~X & ~A) |
           ( D & ~X &  A) |
           ( D &  X &  A);

endmodule    // ← NO semicolon after endmodule
