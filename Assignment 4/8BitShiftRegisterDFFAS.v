`timescale 1ns/1ns

module ShiftRegisterDFFAS (input SI, res, CLK, output reg [7:0] Output, output SO);
    always @(posedge CLK) begin
        if(res) Output <= 8'b0;
        else Output <= {SI, Output[7:1]};
    end
    assign SO = Output[0];
endmodule
