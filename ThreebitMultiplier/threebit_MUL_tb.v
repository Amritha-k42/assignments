`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: AMRITHA K POOJARI
// 
// Create Date: 03.06.2025 15:14:41
// Design Name: 
// Module Name: threebit_MUL_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_multiplier_3bit;
   reg  [2:0] a, b;
   wire [5:0] P;

   multiplier_3bit tb1 (
      .a (a),
      .b (b),
      .P (P)
   );

   integer i, j;
   integer error_count = 0;

   initial begin
      $dumpfile("tb_multiplier_3bit.vcd");
      $dumpvars(0, tb_multiplier_3bit);

      for (i = 0; i < 8; i = i + 1) begin
         for (j = 0; j < 8; j = j + 1) begin
            a = i[2:0];
            b = j[2:0];
            #1;

            if (P !== a * b) begin
               $display("Mismatch: a=%0d b=%0d | expected=%0d got=%0d",
                        a, b, a*b, P);
               error_count = error_count + 1;
            end
         end
      end

      if (error_count == 0)
         $display("All 64 test cases passed!");
      else
         $display("Completed with %0d errors", error_count);

      $finish;
   end
endmodule


