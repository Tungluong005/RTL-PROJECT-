`timescale 1ns / 1ps

module Xor_tb();
   reg a, b;
   wire y;
 // Khoi tao Dut
 Xor_gate DUT(
   .a(a),
   .b(b),
   .y(y)
 );
 // Khoi tao stimulus
   initial begin
   #10; a = 0; b = 0;
   #10; a = 0; b = 1;
   #10; a = 1; b = 0;
   #10; a = 1; b = 1;
   #10; $finish;
   end
   // Monitor block
   initial
     $monitor("a = %b, b = %b, y = %b", a, b, y);
   endmodule
   