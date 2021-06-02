`include "DFlipFlopSyRes.v"
`timescale 1ns/1ns

module DFlipFlopSyResTB ();
    reg dd = 0, res = 0, clk = 0;
    wire q, qn;
    DFlipFlopSyRes DFFSR(dd, res, clk, q, qn);
    always #70 clk = ~clk;
    initial begin
        #300
        #50 dd = 1;
        #150 res = 1;
        #400 res = 0;
        #200 dd = 0;
        #300
        repeat(5) #200 dd = $random;
        #200 $stop;
    end
endmodule

