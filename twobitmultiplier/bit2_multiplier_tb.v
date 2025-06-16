`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 21:20:21
// Design Name: 
// Module Name: bit2_multiplier_tb
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

module multiplier2Bit_tb;

    reg [1:0] a, b;
    wire [3:0] p;

    multiplier2Bit uut ( .a(a), .b(b), .p(p));

    initial begin
        $display("Time   | a    b  => p");
        $monitor("%4dns | %b  %b  => %b", $time, a, b, p);

        a = 2'b00; b = 2'b00; #10;
        a = 2'b01; b = 2'b01; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b11; b = 2'b01; #10;
        a = 2'b01; b = 2'b10; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b11; b = 2'b11; #10;

        $finish;
    end

endmodule

