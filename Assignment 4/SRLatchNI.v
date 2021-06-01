`timescale 1ns/1ns


module SRLatchNI (input S, R, clk, output Q, QN);
    
    wire s_inv, r_inv, clk_inv;
    nand #8 s_inverter(s_inv, S, S), r_inverter(r_inv, R, R), clk_inverter(clk_inv, clk, clk);
    
    wire s_low_active, r_low_active;
    nand #8 s_low_nand(s_low_active, s_inv, clk_inv), r_low_nand(r_low_active, r_inv, clk_inv);

    nand #8 q_out(Q, QN, s_low_active), qn_out(QN, Q, r_low_active);
    
endmodule
