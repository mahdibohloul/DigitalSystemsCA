`timescale 1ns/1ns

module Mealy0101 (
	input CLK, j, reset, output w
);
	reg [1:0] ns;
	reg [1:0] ps;
	parameter [1:0] A = 2'd0, B = 2'd1, C = 2'd3, D = 2'd2;

	always @(ps, j) begin
		ns = A;
		case (ps)
			A: ns = j ? A : B;
			B: ns = j ? C : B;
			C: ns = j ? A : D;
			D: ns = j ? C : B;
			default : ns = A;
		endcase
	end

	assign w = (ps == D) ? j : 1'b0;
	always @(posedge CLK or posedge reset) begin : proc_
		if(reset) begin
			 ps <= 0;
		end else begin
			 ps <= ns ;
		end
	end

endmodule