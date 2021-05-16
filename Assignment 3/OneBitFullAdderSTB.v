`include "OneBitFullAdderS.v"
`timescale 1ns/1ns


module OneBitFullAdderTB();
    reg aa=0,bb=0, ci=0;
    wire s, co;
    OneBitFullAdderS obfa(aa, bb, ci, s, co);
    initial begin
        #100
        #150 aa=1;
        #250 bb=1;
        #400
        repeat(3) #100 {aa, bb, ci} = $random;
        #600 $stop;
    end
endmodule
