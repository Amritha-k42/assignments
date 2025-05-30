`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMRITHA K POOJARI
// 
// Create Date: 30.05.2025 14:17:06
// Design Name: 
// Module Name: fulladder
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

module fulladder(A, B, Cin, Sum, Cout);
 input wire A, B, Cin;
 output wire Sum, Cout;

 assign Sum = A ^ B ^ Cin;
 assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule