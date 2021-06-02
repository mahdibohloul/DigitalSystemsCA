`include "8BitShiftRegisterDLatch.v"
`timescale 1ns/1ns

module ShiftRegisterDLatchTB ();
    reg Si = 0;
    reg Clk = 1;
    wire [7:0] Output;
    wire So;
    ShiftRegisterDLatch shift_register(Si, Clk, Output, So);
    always #350 Clk = ~Clk;
    initial begin
        #500
        #500 Si = 1;
        #1000 Si = 0;
        #1500 Si = 1;
        #3000 $stop;
    end  
endmodule
