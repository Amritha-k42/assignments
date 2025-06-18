`timescale 1ns / 1ps

module tb_pos_edge_detect;

    reg clk;
    reg signal_now;
    wire adelay;

    pos_edge_detect ak (.clk(clk), .signal_now(signal_now), .adelay(adelay) );
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        signal_now = 0;
        #12;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        #20; $finish;
    end
    always @(posedge clk) begin
        $display("Time: %0t    | signal_now: %b    | adelay: %b", $time, signal_now, adelay);
    end

endmodule