`timescale 1ns / 1ps

module XNOR_testbench();
   reg a, b;
   wire y;
 // Khoi tao Dut
 XNOR_Gate Dut(
   .a(a),
   .b(b),
   .y(y)
 );
  // Khoi stimulus
  initial begin
  #10; a = 0; b = 0;
  #10; a = 0; b = 1;
  #10; a = 1; b = 0;
  #10; a = 1; b = 1;
  #10; $finish;
  end
   // Khoi monitor
   initial
     $monitor("a = %b, b = %b, y = %b", a , b ,y);
  endmodule