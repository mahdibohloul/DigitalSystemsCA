`include "NBitAdderAS.v"

`timescale 1ns/1ns


module NBitAdderASTB();
    reg [3:0] aa, bb;
    assign aa = 4'b0;
    assign bb = 4'b0;
    reg ci = 0;
    wire [3:0] ss;
    wire co;
    NBitAdderAS #(4) n_bit_adder(aa, bb, ci, ss, co);
    initial begin
      #100
      #100 aa=4'b1001;
      #300 bb=4'b0101;
      #300
      repeat(10) #300 {aa, bb}  = $random;
      #500 $stop;
    end
endmodule
