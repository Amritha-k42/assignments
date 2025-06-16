`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 16:37:09
// Design Name: 
// Module Name: tb_2bit_counter
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

module tb_2bit_counter;

    reg clk;
    reg reset;
    wire [1:0] count;

    counter_2bit ctr (.clk(clk), .reset(reset), .count(count) );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;

        #12;
        reset = 0;

        repeat (20) begin
            @(posedge clk);
            $display("Time=%0t | count = %b", $time, count);
        end

        $finish;
    end

endmodule

