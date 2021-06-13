`timescale 1ns/1ns

module Moore0101 (
	input clk, j, reset,
	output w
);

	reg [2:0] ns;
	reg [2:0] ps;

	parameter [2:0] A = 3'd0, B = 3'd1, C = 3'd2, D = 3'd3, E = 3'd4;

	always @(ps, j) begin
		ns = A;
		case (ps)
			A: ns = j ? A : B;
			B: ns = j ? C : B;
			C: ns = j ? A : D;
			D: ns = j ? E : B;
			E: ns = j ? A : B;
		endcase
	end

	assign w = (ps == E) ? 1'b1 : 1'b0;

	always @(posedge clk, posedge reset) begin
		if(reset)
			ps <= A;
		else
			ps <= ns;
	end
endmodule