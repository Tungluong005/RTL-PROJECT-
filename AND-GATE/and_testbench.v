`timescale 1ns / 1ps

module and_testbench();
   reg x, y;
   wire z;
  // Khoi tao dut
  And_gate dut(
    .x(x),
    .y(y),
    .z(z)
  );
  // stimulus
  initial begin
  #20; x = 0;   y = 0;
  #20; x = 0;   y = 1;
  #20; x = 1;   y = 0;
  #20; x = 1;   y = 1;
  #20; $finish;
  end
  // Monitor
  initial
   $monitor("x = %b, y = %b, z = %b", x, y, z);
  endmodule
  
