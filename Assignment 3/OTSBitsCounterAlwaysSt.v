`timescale 1ns/1ns


module OTSBitsCounterAlwaysST (input [126:0]A, output reg [6:0] C);
    integer i;
    always @(*) begin
        C = 7'b0000000;
        for (i = 0; i < 127; i = i+1) begin
            if(A[i] == 1'b1) C = #350 C + 1;
        end
    end
endmodule
