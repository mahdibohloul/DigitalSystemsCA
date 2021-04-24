`include "FourToOneMUX.v"
`timescale 1ns/1ns

module FourToOneMUXTB ();
    reg [3:0] aa = 4'b1010;
    reg [1:0] ss = 2'b00;
    wire ww;
    FourToOneMUX mux(aa, ss, ww);
    initial begin
        #50
        #40 ss = 2'b01;
        #60 ss = 2'b11;
        #90 ss = 2'b10;
        #120 ss = 2'b00;
        #160 $stop;
    end
endmodule
