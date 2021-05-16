`include "NBitAdderAS.v"
`timescale 1ns/1ns



module PackageZero (input [6: 0]A, output [2:0] C);
    wire [1:0] fa_one_res, fa_two_res;
    NBitAdderAS #(1) fa_one(A[0], A[1], A[2], fa_one_res[0], fa_one_res[1]);
    NBitAdderAS #(1) fa_two(A[3], A[4], A[5], fa_two_res[0], fa_two_res[1]);
    NBitAdderAS #(2) adder_pz(fa_one_res, fa_two_res, A[6], C[1:0], C[2]);
endmodule


module PackageOne (input [14:0]A, output [3:0]C);
    wire [5:0] adder_pi_res;
    genvar k;
    generate
        for (k = 0; k <= 1; k = k + 1) begin
            PackageZero xx(A[7 * k + 6: 7 * k], adder_pi_res[3 * k + 2: 3 * k]);
        end
    endgenerate
    NBitAdderAS #(3) adder_pi(adder_pi_res[5:3], adder_pi_res[2:0], A[14], C[2:0], C[3]);
endmodule


module PackageTwo(input [30:0]A, output [4:0]C);
    wire [7:0] adder_pt_res;
    genvar k;
    generate
        for (k = 0; k <= 1; k = k + 1) begin
            PackageOne xx(A[15 * k + 14:15 * k], adder_pt_res[4 * k + 3: 4 * k]);
        end
    endgenerate
    NBitAdderAS #(4) adder_pt(adder_pt_res[3:0], adder_pt_res[7:4], A[30], C[3:0], C[4]);
endmodule

module PackageThree (input [62:0]A, output [5:0]C);
    wire [9:0] adder_pthree_res;
    genvar k;
    generate
        for (k = 0; k <= 1; k = k + 1) begin
            PackageTwo xx(A[31 * k + 30: 31 * k], adder_pthree_res[5 * k + 4: 5 * k]);
        end
    endgenerate
    NBitAdderAS #(5) adder_pthree(adder_pthree_res[4:0], adder_pthree_res[9:5], A[62], C[4:0], 
                                                                                        C[5]);
endmodule

module OTSBitsCounter(input [126:0] A, output [6:0]C);
    wire [11:0] pthree_res;
    genvar k;
    generate
        for (k = 0; k <= 1; k = k + 1) begin
            PackageThree xx(A[63 * k + 62: 63 * k], pthree_res[6 * k + 5: 6 * k]);
        end
    endgenerate
    NBitAdderAS #(6) adder_pf(pthree_res[5:0], pthree_res[11:6], A[126], C[5:0], C[6]);
endmodule
