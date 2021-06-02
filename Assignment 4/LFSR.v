`include "8BitShiftRegisterDFFAS.v"
`timescale 1ns/1ns

module LFSR (input res, CLK, output [7:0] Output, output SO);
    wire coeff_1, coeff_2, si;
    xnor(coeff_1, Output[3], Output[0]);
    xnor(coeff_2, Output[7], Output[6]);
    xnor(si, coeff_1, coeff_2);
    ShiftRegisterDFFAS SRDFFAS(si, res, CLK, Output[7:0], SO);
endmodule
