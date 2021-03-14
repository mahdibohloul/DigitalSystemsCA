`include "TwoInputNand.v"
`include "ThreeInputNand.v"
`include "FourInputNand.v"


`timescale 1ns/1ns


module NandMUX(input a,b,c,d,s0,s1, output w);
    wire s0_bar, s1_bar;
    wire a_s, b_s, c_s, d_s;
    TwoINand invert_s0(s0,s0,s0_bar);
    TwoINand invert_s1(s1,s1,s1_bar);
    ThreeInputNand select_a(s0_bar, s1_bar, a, a_s);
    ThreeInputNand select_b(s0_bar, s1, b, b_s);
    ThreeInputNand select_c(s0, s1_bar, c, c_s);
    ThreeInputNand select_d(s0, s1, d, d_s);
    FourInputNand result(a_s, b_s, c_s, d_s, w);
endmodule

