`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMRITHA K POOJARI
// 
// Create Date: 30.05.2025 15:33:53
// Design Name: 
// Module Name: priority_encoder
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

module priority_encoder(D, A, B);
 input [3:0]D;
 output A, B;

  assign A = (D[2] &~D[3]) | D[3];
  assign B = (D[1] & ~D[2]) | D[3];

endmodule
