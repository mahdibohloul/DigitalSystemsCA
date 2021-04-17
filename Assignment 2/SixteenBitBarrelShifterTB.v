`include "SixteenBitBarrelShifter.v"
`timescale 1ns/1ns

module SixteenBitBarrelShifterTB ();
    reg [15:0] A = 16'hd;
    reg [3:0] N = 4'b0;
    wire [15:0] ww;

    SixteenBitBarrelShifter barrel_shifter(A, N, ww);
    initial begin
        #60
        repeat(5) #60 N = $random;
        repeat(15) #60 A = A + 1; 
        #100 $stop;  
    end
    
endmodule
