`include "SixteenToOneMUX.v"
`timescale 1ns/1ns

module SixteenToOneMUXTB ();
    reg [15:0] aa = 16'ha45c;
    reg [3:0] ss = 4'b0;
    wire ww;
    SixteenToOneMUX mux(aa, ss, ww);
    initial begin
        #70 
        #50 ss = 4'b0001;
        #70 ss = 4'b1010;
        #120 ss = 4'b1011;
        #180 ss = 4'b1001;
        #250 $stop;
    end
    
endmodule
