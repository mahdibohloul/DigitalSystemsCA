`timescale 1ns/1ns

module sol7 (
	input [7:0] PI,
	input CLK, reset, SI, 
	output reg [7:0] res
);

	always @(posedge CLK, posedge reset) begin
		if(reset)
			res <= 8'b0;
		else begin
			case (I)
				2'b00: res <= {SI, res[7:1]};
				2'b01: res <= {SI, SI, res{7:2}};
				2'b10: res <= {res[0], res[7:1]};
				2'b11: res <= PI;
				default : res <= 8'b0;
			endcase
		end
	end
endmodule