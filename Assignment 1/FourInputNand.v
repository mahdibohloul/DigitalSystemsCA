`timescale 1ns/1ns

module FourInputNand(input a,b,c,d, output w);
    supply1 Vdd;
    supply1 Gnd;

    wire y1,y2,y3;
    pmos #(5,6,7) T1(w,Vdd,a), T2(w,Vdd,b), T3(w,Vdd,c), T4(w,Vdd,d);
    nmos #(3,4,5) T5(w,y3,a), T6(y3,y2,b), T7(y2,y1,c), T8(y1,Gnd,d);
endmodule
