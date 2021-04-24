`include "FourToOneMUX.v"
`timescale 1ns/1ns

module SixteenToOneMUX(input [15:0]A, [3:0]S, output w);
    wire [3:0] W;
    FourToOneMUX mux1(A[3:0], S[1:0], W[0]);
    FourToOneMUX mux2(A[7:4], S[1:0], W[1]);
    FourToOneMUX mux3(A[11:8], S[1:0], W[2]);
    FourToOneMUX mux4(A[15:12], S[1:0], W[3]);
    FourToOneMUX res(W, S[3:2], w);
endmodule
