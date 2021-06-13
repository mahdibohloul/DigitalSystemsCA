`timescale 1ns/1ns

module Moore10010PA (input clk, rst, j, output w);
    reg [3:0] ns, ps;
    parameter [3: 0] A = 4'd0, B = 4'd1, C = 4'd2, D = 4'd3, E = 4'd4, F = 4'd5;

    always @(ps, j) begin
        ns = A;
        case(ps)
            A: ns = j ? B : A;
            B: ns = j ? B : C;
            C: ns = j ? B : D;
            D: ns = j ? E : A;
            E: ns = j ? B : F;
            F: ns = j ? B : D;
            default: ns = A;
        endcase
    end
    assign w = (ps == F) ? 1'b1 : 1'b0;

    always @(posedge clk, posedge rst) begin
        if(rst)
             ps <= 0;
        else
             ps <= ns;
    end
endmodule
