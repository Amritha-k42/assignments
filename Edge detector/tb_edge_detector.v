`timescale 1ns / 1ps

module tb_edge_detector;
    reg clk;
    reg signal_now;
    wire pos_edge;
    wire neg_edge;

    edge_detector al ( .clk(clk), .signal_now(signal_now), .pos_edge(pos_edge), .neg_edge(neg_edge) );
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        signal_now = 0;
        #12;
        signal_now = 1;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 0;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 0;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;
        signal_now = 0;  #10;
        signal_now = 1;  #10;
        signal_now = 1;  #10;
        signal_now = 0;  #10;        
        signal_now = 0;  #10;
        #20;
        $finish;
    end

    always @(posedge clk) begin
        $display("Time: %0t   | signal_now: %b   | pos_edge: %b   | neg_edge: %b",
                 $time, signal_now, pos_edge, neg_edge);
    end
endmodule