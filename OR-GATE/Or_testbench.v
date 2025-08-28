`timescale 1ns / 1ps


module Or_testbench();
  reg a, b;
  wire y;
  // khoi tao dut
  Or_gate DUT(
   .a(a),
   .b(b),
   .y(y)
  );
  // khoi tao stimulus
  initial begin
  #0; a = 0; b = 0;
  #10; a = 0; b = 1;
  #10; a = 1; b = 0;
  #10; a = 1; b = 1;
  #10; $finish;
  end
  // Monitor
  initial 
    $monitor(" a= %b, b = %b, y = %b", a, b, y);
  endmodule
    
   
