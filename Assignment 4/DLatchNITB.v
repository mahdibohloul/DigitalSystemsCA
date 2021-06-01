`include "DLatchNI.v"
`timescale 1ns/1ns

module DLatchNITB ();
    reg dd=0, clk=1;
    wire q, qn;
    DLatchNI d_latch(dd, clk, q, qn);
    always #50 clk = ~clk;
    initial begin
        #50
        repeat(10) #50 dd = $random;
        #100 $stop;
    end
endmodule
