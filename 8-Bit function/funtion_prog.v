`timescale 1ns / 1ps

module function_prog (input  wire a, b, c, d, e, f, g, h, input  wire clk, output reg y);

    wire logic_out;
    assign logic_out = (a & b) | (c ^ d) | (e & f) | (g ^ h);

    always @(posedge clk) begin
        y <= logic_out;
    end

endmodule