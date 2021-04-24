`timescale 1ns/1ns


module sol1A(input a,b,c,d, output w);
    supply1 Vdd;
    supply0 Gnd;
    wire y, k, h;
    wire inv_c, inv_a, inv_b, inv_d;
    not #6 invC(inv_c, c), invA(inv_a, a), invB(inv_b, b), invD(inv_d, d);
    nand #5 nand1(y, a, inv_c);
    nand #8 nand2(k, inv_a, inv_b, c), nand3(h, inv_a, inv_d);
    nand #8 res(w, y, k, h);
endmodule