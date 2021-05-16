`timescale 1ns/1ns

module OneBitComp(input a, b, input l, g, output lt, gt);
    assign {lt, gt} = (a < b) ? 2'b10:
                          (a > b) ? 2'b01:
                          (a == b) ? {l, g}: 2'bx;

endmodule
