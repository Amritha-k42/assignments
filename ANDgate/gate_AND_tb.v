`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2025 22:01:06
// Design Name: 
// Module Name: gate_AND_tb
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
module tb_gate_AND;
    reg a, b, clk;
    wire y;

    gate_AND ag ( .a(a), .b(b), .clk(clk), .y(y) );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $display("Time\tclk\ta\tb\ty");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, a, b, y);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        #10;
        $finish;
    end

endmodule
