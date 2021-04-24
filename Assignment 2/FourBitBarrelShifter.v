`include "FourToOneMUX.v"
`timescale 1ns/1ns

module FourBitBarrelShifter(input [3:0]A, input [1:0]N, output [3:0]W);
    FourToOneMUX mux1(A, N, W[0]);
    FourToOneMUX mux2({A[0], A[3], A[2], A[1]}, N, W[1]);
    FourToOneMUX mux3({A[1], A[0], A[3], A[2]}, N, W[2]);
    FourToOneMUX mux4({A[2], A[1], A[0], A[3]}, N, W[3]);
endmodule
