`include "sol2.v"

`timescale 1ns/1ns

module XorTB();
    reg aa=0,bb=0;
    wire ww;
    Xor xor(aa, bb, ww);
    
    initial begin
        #30
        #15 bb=1;
        #50 aa=1;
        #100 $stop;
    end
endmodule