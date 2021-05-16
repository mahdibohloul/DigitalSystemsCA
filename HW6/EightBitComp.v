`include "OneBitComp.v"
`timescale 1ns/1ns


module EightBitComp (input [7:0]A, B, output lt, gt);
    wire [8:0] G;
    wire [8:0] L;
    assign G[8] = 0;
    assign L[8] = 0;
    genvar k;
    generate
        for (k = 7; k >= 0; k = k - 1) begin
            OneBitComp xx(A[k], B[k], L[k + 1], G[k + 1], L[k], G[k]);
        end
    endgenerate
    assign lt = L[0];
    assign gt = G[0];
endmodule
