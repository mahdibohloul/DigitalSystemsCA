`include "DLatchNI.v"
`timescale 1ns/1ns


module ShiftRegisterDLatch (input SI, CLK, output [7:0] Output, output SO);
    wire [7:0] QBar;
    wire [8:0] output_temp;
    assign output_temp[8] = SI;
    genvar i;
    generate
        for (i = 7; i >= 0; i=i-1) begin
            DLatchNI xx(output_temp[i + 1], CLK, output_temp[i], QBar[i]);
        end
    endgenerate
    assign Output = output_temp[7:0];
    assign SO = Output[0];
endmodule
