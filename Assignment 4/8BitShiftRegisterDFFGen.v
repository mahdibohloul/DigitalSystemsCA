`include "DFlipFlopSyRes.v"
`timescale 1ns/1ns


module ShiftRegisterDFFGen (input SI, res, CLK, output [7:0] Output, output SO);
    wire [7:0] QN;
    wire [8:0] out_temp;
    assign out_temp[8] = SI;
    genvar k;
    generate
        for (k = 7; k >= 0; k=k-1) begin
            DFlipFlopSyRes xx(out_temp[k + 1], res, CLK, out_temp[k], QN[k]);
        end
    endgenerate
    assign Output = out_temp[7:0];
    assign SO = Output[0];
endmodule
