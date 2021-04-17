`include "SixteenToOneMUX.v"
`timescale 1ns/1ns


module SixteenBitBarrelShifter (input [15:0]A, input [3:0]N, output [15:0]W);
    SixteenToOneMUX mux1(A, N, W[0]);
    SixteenToOneMUX mux2({A[0], A[15:1]}, N, W[1]);
    SixteenToOneMUX mux3({A[1:0], A[15:2]}, N, W[2]);
    SixteenToOneMUX mux4({A[2:0], A[15:3]}, N, W[3]);
    SixteenToOneMUX mux5({A[3:0], A[15:4]}, N, W[4]);
    SixteenToOneMUX mux6({A[4:0], A[15:5]}, N, W[5]);
    SixteenToOneMUX mux7({A[5:0], A[15:6]}, N, W[6]);
    SixteenToOneMUX mux8({A[6:0], A[15:7]}, N, W[7]);
    SixteenToOneMUX mux9({A[7:0], A[15:8]}, N, W[8]);
    SixteenToOneMUX mux10({A[8:0], A[15:9]}, N, W[9]);
    SixteenToOneMUX mux11({A[9:0], A[15:10]}, N, W[10]);
    SixteenToOneMUX mux12({A[10:0], A[15:11]}, N, W[11]);
    SixteenToOneMUX mux13({A[11:0], A[15:12]}, N, W[12]);
    SixteenToOneMUX mux14({A[12:0], A[15:13]}, N, W[13]);
    SixteenToOneMUX mux15({A[13:0], A[15:14]}, N, W[14]);
    SixteenToOneMUX mux16({A[14:0], A[15]}, N, W[15]);
endmodule
