`timescale 1ns / 1ps

module singlePORT_50kbits(
 input clk, we, [10:0] addr, [31:0] din, output [31:0] dout
    );
     reg [31:0]mem [0:1562];
    
    always @(posedge clk)
     begin 
     if(we) begin
      mem[addr] <= din;
      end
      end
    assign dout = mem[addr]; 
endmodule