`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMRITHA K POOJARI
// 
// Create Date: 08.06.2025 17:20:01
// Design Name: 
// Module Name: counter_clk_div
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module counter_clk_div (clk, reset, clk_div2, clk_div4);
    input wire clk;
    input wire reset;
    output wire clk_div2;
    output wire clk_div4;

    reg [1:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 2'b00;
        else
            count <= count + 1;
    end

    assign clk_div2 = count[0];
    assign clk_div4 = count[1];

endmodule

