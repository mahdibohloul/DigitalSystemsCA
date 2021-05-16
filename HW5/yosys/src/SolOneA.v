`timescale 1ns/1ns


module SolOneA (input a,b,c,d, output w);
    assign w = (~a & ~b & c & d) | (~a & ~b & c & ~d) | (~a & b & c & d) | (~a & b & c & ~d) | (~a & b & ~c & ~d) | (a & b & ~c & ~d) | (a & b & ~c & d) | (a & ~b & ~c & ~d) | (a & ~b & ~c & d);
endmodule