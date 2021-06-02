`include "LFSR.v"
`timescale 1ns/1ns

module LFSRTB ();
    reg clk = 0, res = 1;
    wire [7:0] out;
    wire so;
    LFSR lfsr(res, clk, out, so);
    always #200 clk = ~clk;
    initial begin
        #2000
        #100 res = 0;
        #30000 $stop;
    end
endmodule
