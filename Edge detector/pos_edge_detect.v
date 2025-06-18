`timescale 1ns / 1ps

module pos_edge_detect (
    input clk,
    input signal_now,
    output reg adelay);
    reg signal_old;
    reg adelay2;

    always @(posedge clk) begin
        adelay2 <= signal_now & ~signal_old;
        adelay <= adelay2;
        signal_old <= signal_now;
    end
endmodule
