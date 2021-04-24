`include "sol4.v"

`timescale 1ns/1ns

module FourInputNandTB();
    reg aa=0,bb=0,cc=0,dd=0;
    wire ww;

    FourInputNor four_i_nor(aa, bb, cc, dd, ww);

    initial begin
        #50
        #30 aa=1;bb=1;cc=1;dd=1;
        #80 $stop;
    end

endmodule