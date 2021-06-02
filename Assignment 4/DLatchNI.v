`include "SRLatchNI.v"
`timescale 1ns/1ns


module DLatchNI (input D, clk, output Q, QN);
    wire d_inv;
    not (d_inv, D);
    SRLatchNI d_latch(d_inv, D, clk, Q, QN);
endmodule

