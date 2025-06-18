`timescale 1ns / 1ps

module distributed_ram (
    input wire clk,
    input wire we,
    input wire [7:0] addr,
    input wire [31:0] din,
    output reg [31:0] dout
);

    (* ram_style = "distributed" *) reg [31:0] mem [0:255];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        dout <= mem[addr];
    end

endmodule
