`include "Moore10010.vo"
`include "Mealy10010.vo"

`timescale 1ns/1ns
module MAMCSTB();
    reg clk = 0;
    reg rst;
    reg j;
    wire MealyOut;
    wire MooreOut;
    assign dif = MooreOut ^ MealyOut;
    Moore10010 MOORE(clk, rst, j, MooreOut);
    Mealy10010 MEALY(clk, rst, j, MealyOut);
    always #50 clk = ~clk;
    initial begin
    #1 rst = 0;
    #10 rst = 0;
    #20 j = 1;
    #30 j = 0;
    #200 j = 1;
    #100 j = 0;
    #110 j = 0;
    #110 j = 1;
    #110 j = 0;
    #20 j = 1;
    #20 j = 0;
    repeat(40) #110 j = $random;
    #200 $stop;
    end
endmodule
