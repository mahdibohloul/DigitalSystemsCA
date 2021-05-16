`timescale 1ns/1ns


module NBitAdderAS #(parameter N = 32) (input [N - 1: 0] A, B, input Ci, output [N - 1:  0] S, output Co);
    assign #(N * 35, N * 42) {Co, S} = A + B + Ci;
endmodule
