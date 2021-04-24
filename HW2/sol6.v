`include "sol4.v"
`include "sol2.v"

`timescale 1ns/1ns

module FourBitComprator(input [0:3]a, [0:3]b, output w);
    wire y1,y2,y3,y4;

    Xor xor1(a[0], b[0], y1);
    Xor xor2(a[1], b[1], y2);
    Xor xor3(a[2], b[2], y3);
    Xor xor4(a[3], b[3], y4);

    FourInputNor four_i_nor(y1,y2,y3,y4,w);
endmodule