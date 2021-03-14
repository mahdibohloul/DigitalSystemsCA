`include "TriState4To1MUX.v"
`include "4To1MUX.v"

`timescale 1ns/1ns


module TriStateMUXCompareNandMUXTB();
    reg aa=0,bb=0,cc=0,dd=0,s0=0,s1=0;
    wire ww1,ww2;

    NandMUX nand_mux(aa,bb,cc,dd,s0,s1,ww1);
    TriStateMUX tri_state(aa,bb,cc,dd,s0,s1,ww2);

    initial begin
        #50
        #100 s0=1;s1=1;
        #100 bb=1;dd=1;
        #100 aa=1;cc=1;
        #100 $stop;
    end
endmodule
