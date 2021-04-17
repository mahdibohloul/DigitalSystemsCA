`timescale 1ns/1ns


module FourToOneMUX (input [3:0]A, [1:0]S, output w);
    assign #32 w = A[S];
endmodule
