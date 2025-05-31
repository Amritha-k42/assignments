`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 21:58:27
// Design Name: 
// Module Name: gate_AND
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


module gate_AND(a, b, y, clk);
 input a, b, clk;
 output reg y;
 
 always @(posedge clk)
  begin
   y <= a& b;
  end

endmodule
