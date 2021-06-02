`include "DLatchNI.v"
`timescale 1ns/1ns

module DFlipFlop (input D, CLK, output Q, QN);
    wire clk_inv, qm, qmn;
    not(clk_inv, CLK);
    DLatchNI d_latch_1(D, CLK, qm, qmn);
    DLatchNI d_latch_2(qm, clk_inv, Q, QN);
endmodule
