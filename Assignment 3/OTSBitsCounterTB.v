`include "OTSBitsCounter.v"
`timescale 1ns/1ns


module OTSBitsCounterTB();
    reg [126:0] aa = 127'b0;
    wire [6:0] ww;
    OTSBitsCounter bits_counter(aa, ww);
    always #500 aa = {1'b1, aa[126:1]};
endmodule