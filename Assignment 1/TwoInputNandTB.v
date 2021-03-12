`include "TwoInputNand.v"

`timescale 1ns/1ns


module TwoINand_TB();
    reg aa=0,bb=0;
    wire ww;
    TwoINand two_nand(.a(aa), .b(bb), .w(ww));
    initial begin
        #15
        #20 aa=1;
        #30 bb=1;
        #40 aa=0;bb=0;
        #55 aa=1;bb=1;
        #20 $stop;
    end
endmodule
