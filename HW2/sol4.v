`timescale 1ns/1ns

module FourInputNor(input a,b,c,d, output w);
    supply1 Vdd;
    supply0 Gnd;

    wire y1,y2,y3;

    pmos #(5,7,9) T1(y1,Vdd,a), T2(y2,y1,b), T3(y3,y2,c), T4(w,y3,d);
    nmos #(3,5,7) T5(w,Gnd,c), T6(w,Gnd,b), T7(w,Gnd,d), T8(w,Gnd,a);


endmodule