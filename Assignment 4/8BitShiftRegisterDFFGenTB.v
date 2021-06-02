`include "8BitShiftRegisterDFFGen.v"
`timescale 1ns/1ns

module ShiftRegisterDFFGenTB ();
    reg si=0, clk=1, res=0;
    wire [7:0] out;
    wire so;
    ShiftRegisterDFFGen SRDFFG(si, res, clk, out, so);
    always #200 clk = ~clk;
    initial begin
        #1000
        repeat(4) #500 si = $random;
        #1000
        repeat(4) #500 res = $random;
        #1000 $stop;
    end
endmodule
