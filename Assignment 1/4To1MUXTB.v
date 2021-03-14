`include "4To1MUX.v"

`timescale 1ns/1ns

module NandMUXTB();
    reg aa=0,bb=0,cc=0,dd=0,ss0=1,ss1=1;
    wire ww;
    NandMUX mux(aa,bb,cc,dd,ss0,ss1,ww);

    initial begin
        #50
        #50 aa=1; ss0=0; ss1=0;
        #50 bb=1; ss1=1;
        #50 dd=1; ss0=1; ss1=1;
        #50 ss0=0; ss1=1;
        #50 $stop;
    end
endmodule
