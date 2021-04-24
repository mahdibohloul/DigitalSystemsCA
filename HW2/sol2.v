`timescale 1ns/1ns


module Xor(input a,b, output w);
    supply1 Vdd;
    supply0 Gnd;
    wire y1,y2,y3,y4,y5;

    pmos #(5,7,9) p_inv_a(y1,Vdd,a);
    nmos #(3,5,7) n_inv_a(y1,Gnd,a);

    pmos #(5,7,9) p_inv_b(y4,Vdd,b);
    nmos #(3,5,7) n_inv_b(y4,Gnd,b);

    pmos #(5,7,9) T1(y2,Vdd,y1), T2(w,y2,b), T3(y3,Vdd,a), T4(w,y3,y4);
    nmos #(3,5,7) T5(w,y5,y1), T6(w,y5,b), T7(y5,Gnd,a), T8(y5,Gnd,y4);

endmodule
