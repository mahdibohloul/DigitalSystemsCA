`timescale 1ns/1ns


module OneBitFullAdderS (input a, b, ci, output s, co);
    wire y1, y2, y3, abXor, y4, y5, y6;
    nand #(10, 7) ab_nand(y1, a, b);
    nand #(10, 7) aab_nand(y2, a, y1), bab_nand(y3, b, y1);
    nand #(10, 7) ab_xor(abXor, y3, y2);
    nand #(10, 7) abxorci_nand(y4, abXor, ci), ciabxorci_nand(y5, y4, ci), abxorabxorci_nand(y6, y4, abXor);
    nand #(10, 7) sum(s, y6, y5);
    nand #(10, 7) carry_out(co, y1, y4);
endmodule
