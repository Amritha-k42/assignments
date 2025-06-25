//Design single port bram (depth 2048 width 16), 16x2048, how many BRAM it is consuming?

`timescale 1ns / 1ps
module singleport_BRAM_16x2048(
    input wire clk,
    input wire we,
    input wire [10:0] addr,      
    input wire [15:0] din,
    output reg [15:0] dout);

    (* ram_style = "block" *) reg [15:0] mem [0:2047];
    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        dout <= mem[addr];
    end
endmodule
