`include "SRLatchNI.v"
`timescale 1ns/1ns

module SRLatchNITB ();
    reg ss=0, rr=0, clk=1;
    wire q, qn;

    SRLatchNI sr_latch(ss, rr, clk, q, qn);
    always #40 clk = ~clk;
    initial begin
        #40
        repeat(10) #50 {ss, rr} = $random;
        #100 $stop;
    end
    
endmodule
