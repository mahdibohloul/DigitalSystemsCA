`include "TriStateBuffer.v"
`timescale 1ns/1ns


module TriStateBufferTb();
    reg en=0,bb=0;
    wire ww;
    TriStateBuffer tri_state(.en(en), .a(bb), .w(ww));
    initial begin
        #15
        #20 en=1;
        #35 bb=1;
        #50 en=0;bb=0;
        #70 en=1;bb=1;
        #20 $stop;
    end
endmodule
