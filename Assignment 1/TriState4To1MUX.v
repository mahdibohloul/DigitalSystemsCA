`include "TriStateBuffer.v"

`timescale 1ns/1ns



module TriStateMUX(input a,b,c,d,s0,s1, output w);
    supply1 Vdd;
    supply0 Gnd;

    wire s0_inv, s1_inv;
    wire mux1_out, mux2_out;

    TriStateBuffer invert_s0(.en(Vdd), .a(s0), .w(s0_inv)); 
    TriStateBuffer invert_s1(.en(Vdd), .a(s1), .w(s1_inv));
    TriStateBuffer select_a(.en(s0_inv), .a(a), .w(mux1_out)); 
    TriStateBuffer select_b(.en(s0), .a(b), .w(mux1_out));
    TriStateBuffer select_c(.en(s0_inv), .a(c), .w(mux2_out));
    TriStateBuffer select_d(.en(s0), .a(d), .w(mux2_out));

    TriStateBuffer select_mux1(.en(s1_inv), .a(mux1_out), .w(w));
    TriStateBuffer select_mux2(.en(s1), .a(mux2_out), .w(w));

endmodule

