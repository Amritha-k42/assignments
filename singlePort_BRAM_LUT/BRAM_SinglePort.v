`timescale 1ns / 1ps
//////////////////USES BRAM////////////////////////
module BRAM_SinglePort(
    input wire clk,
    input wire en,
    input wire we,
    input wire [10:0] addr,    
    input wire [31:0] din,
    output reg [31:0] dout
);

    (* ram_style = "block" *) reg [31:0] mem [0:1562];

    always @(posedge clk) begin
        if (en) begin
            if (we)
                mem[addr] <= din;
            dout <= mem[addr];
        end
    end

endmodule
