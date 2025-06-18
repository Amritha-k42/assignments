`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Verilog code for 2 Dual port BRAM 32x16k size
module memory2(
    input clka, clkb, ena, enb, wea, web,
    input [13:0]addra,
    input [31:0]dina, 
    output [31:0]douta,
    input [13:0]addrb,
    input [31:0]dinb, 
    output [31:0]doutb
    );
    
    blk_mem_gen_2 your_instance_name (
      .clka(clka),    // input wire clka
      .ena(ena),      // input wire ena
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [13 : 0] addra
      .dina(dina),    // input wire [31 : 0] dina
      .douta(douta),  // output wire [31 : 0] douta
      .clkb(clkb),    // input wire clkb
      .enb(enb),      // input wire enb
      .web(web),      // input wire [0 : 0] web
      .addrb(addrb),  // input wire [13 : 0] addrb
      .dinb(dinb),    // input wire [31 : 0] dinb
      .doutb(doutb)  // output wire [31 : 0] doutb
    );
endmodule