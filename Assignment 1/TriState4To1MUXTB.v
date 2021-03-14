`include "TriState4To1MUX.v"

`timescale 1ns/1ns

module TriStateMUXTB();
    reg aa=1,bb=0,cc=1,dd=0,ss0=0,ss1=0;
    wire w;
    TriStateMUX tri_state_mux(aa,bb,cc,dd,ss0,ss1,w);

    initial begin
        #100
        #30 ss0=1;ss1=1;
        #50 bb=0;dd=0;
        #30 ss0=0;
        #30 ss1=0;
        #50 $stop;
    end
endmodule
