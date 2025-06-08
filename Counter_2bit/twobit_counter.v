`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMRITHA K POOJARI
// 
// Create Date: 06.06.2025 18:30:25
// Design Name: 
// Module Name: twobit_counter
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

module counter_2bit (clk, reset, count);
    input wire clk;
    input wire reset;
    output reg [1:0] count;
    wire d0, d1;

    assign d0 = ~count[0];             
    assign d1 = count[1] ^ count[0];   

    always @(posedge clk) begin
        if (reset)
            count <= 2'b00;
        else
            count <= {d1, d0};
    end

endmodule

