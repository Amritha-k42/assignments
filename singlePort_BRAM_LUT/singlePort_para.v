`timescale 1ns / 1ps

module singlePort_para #(
   parameter WIDTH = 32,
   parameter DEPTH = 1024,
   parameter ADDR_WIDTH = 10)
 (input clk, we, [ADDR_WIDTH-1 :0] addr, [WIDTH-1 :0] din, output [WIDTH-1:0] dout
    );
    reg [WIDTH-1:0]mem [0:DEPTH-1];
    
    always @(posedge clk)
     begin 
     if(we) begin
      mem[addr] <= din;
      end
      end
     
    assign dout = mem[addr]; 
endmodule
