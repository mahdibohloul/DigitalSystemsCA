`include "OneBitFullAdderS.v"
`timescale 1ns/1ns

module NBitAdderS #(parameter N=32) (input [N-1:0] A,B, output [N-1:0] S, output Co);
    wire [N:0] co;
    assign co[0] = 0;
    genvar k;
    generate
        for (k = 0; k < N ; k = k + 1) begin
            OneBitFullAdderS xx(A[k], B[k], co[k], S[k], co[k + 1]);
        end
    endgenerate
    assign Co = co[N];
endmodule
