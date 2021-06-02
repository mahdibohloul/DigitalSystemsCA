`include "DLatchNI.v"
`timescale 1ns/1ns

module DFlipFlopSyRes (input D, res, CLK, output Q, QN);
    wire clk_inv, qm, qmn, d_res_and, res_inv;
    not(clk_inv, CLK);
    not(res_inv, res);
    and(d_res_and, D, res_inv);
    DLatchNI d_latch_1(d_res_and, CLK, qm, qmn);
    DLatchNI d_latch_2(qm, clk_inv, Q, QN);
endmodule
