`timescale 1ns/1ns

module ThreeInputNand(input a,b,c, output w);
    supply1 Vdd;
    supply1 Gnd;

    wire y1,y2;
    pmos #(5,6,7) T1(w,Vdd,a), T2(w,Vdd,b), T3(w,Vdd,c);
    nmos #(3,4,5) T4(w,y2,a), T5(y2,y1,b), T6(y1,Gnd,c);
endmodule