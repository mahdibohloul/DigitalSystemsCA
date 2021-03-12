
`timescale 1ns/1ns

module TwoINand(input a, b, output w);
    supply1 Vdd;
    supply0 Gnd;
    wire y1;
    pmos #(5,6,7) T1(w, Vdd, a), T2(w, Vdd, b);
    nmos #(3,4,5) T3(y1,Gnd,a), T4(w,y1,b);
endmodule
