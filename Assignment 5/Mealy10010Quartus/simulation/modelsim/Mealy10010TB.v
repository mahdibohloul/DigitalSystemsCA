`include "Mealy10010PB.v"
`include "Mealy10010.vo"
`timescale 1ns/1ns
module Mealy10010TB ();
    reg j = 0, clk = 0, rst = 0;
    wire w;
    Mealy10010 MFSM(clk, rst, j, w);
    Mealy10010PB MFSMPB(clk, rst, j, w);
    always #100 clk = ~clk;
    initial begin
        #500
        #40 j = 1;
        #200 j = 0;
        #400 j = 1;
        #200 j = 0;
        #200
        repeat(10) #200 j = $random;
        #100 $stop;
    end
endmodule
