`include "Moore10010.vo"
`include "Moore10010PA.v"
`timescale 1ns/1ns


module Moore10010TB ();
    reg clk = 0, j = 0, rst = 0;
    wire w;

    Moore10010 moore(clk, rst, j, w);
    Moore10010PA moorepa(clk, rst, j, w);
    always #100 clk = ~clk;

    initial begin
	#1000
        #80 j = 1;
        #210 j = 0;
        #200 j = 0;
        #200 j = 1;
        #200 j = 0;
        #200
        repeat(10) #100 j = $random;
        #500 rst = 1;
        #2000 $stop;
    end
endmodule
