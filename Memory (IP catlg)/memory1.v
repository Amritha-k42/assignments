`timescale 1ns / 1ps
//Verilog code for single port BRAM 16x2048
    module memory1(
    input clka, ena, wea,
    input [10:0]addra,
    input [15:0]dina,
    output [15:0]douta
    );
    
    blk_mem_gen_0 your_instance_name (
      .clka(clka),    // input wire clka
      .ena(1'b1),      // input wire ena
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [10 : 0] addra
      .dina(dina),    // input wire [15 : 0] dina
      .douta(douta)  // output wire [15 : 0] douta
    );
endmodule
