`include "FourBitBarrelShifter.v"
`timescale 1ns/1ns


module FourBitBarrelShifterTB ();
    reg [3:0] aa = 4'b1010;
    reg [1:0] nn = 2'b00;
    wire [3:0] ww;
    FourBitBarrelShifter barrel_shifter(aa, nn, ww);
    initial begin
        #50
        #60 nn = 2'b01;
        #100 nn = 2'b10;
        #140 nn = 2'b11;
        #190 $stop;
    end
endmodule
