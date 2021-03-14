`timescale 1ns/1ns

module TriStateBuffer(input en, a, output w);
    supply1 Vdd;
    supply0 Gnd;
    wire y1, y2, y3;
    pmos #(5,6,7) T1(y1,Vdd,en), T3(y2,Vdd,a), T4(w,y2,y1);
    nmos #(3,4,5) T2(y1,Gnd,en), T5(y3,Gnd,a), T6(w,y3,en);
endmodule
