`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMRITHA K POOJARI
// 
// Create Date: 29.05.2025 20:47:51
// Design Name: 
// Module Name: twobitmultiplier
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

module multiplier2Bit(input [1:0] a, b, output [3:0] p );
 wire c1, c2;
    assign c1 = (a[1] & b[0]) & (a[0] & b[1]);
    assign c2 = c1 & (a[1] & b[1]);
 
    assign p[0] = a[0] & b[0];
    assign p[1] = (a[1] & b[0]) ^ (a[0] & b[1]);
    assign p[2] = c1 ^ (a[1] & b[1]);
    assign p[3] = c2;
endmodule

