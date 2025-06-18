`timescale 1ns / 1ps

module edge_detector (
    input clk,
    input signal_now,
    output reg pos_edge,
    output reg neg_edge
);
    reg signal_old;
    always @(posedge clk) begin
        pos_edge <=  signal_now & ~signal_old;
        neg_edge <= ~signal_now &  signal_old;
        signal_old <= signal_now;
    end
endmodule