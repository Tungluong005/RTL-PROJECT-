`timescale 1ns / 1ps

module Nor_testbench();
   reg a, b;
   wire y;
 // khoi tao Dut
 NOR_GATE DUT(
   .a(a),
   .b(b),
   .y(y)
 );
  // Khoi stimulus
  initial begin
  #20; a = 0; b = 0;
  #20; a = 0; b = 1;
  #20; a = 1; b = 0;
  #20; a = 1; b = 1;
  #20; $finish;
  end
  // Khoi monitor
  initial 
    $monitor("a = %b, b = %b, y = %b", a, b, y);
  endmodule
