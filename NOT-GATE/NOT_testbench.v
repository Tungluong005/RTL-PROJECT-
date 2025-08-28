`timescale 1ns / 1ps

module NOT_testbench();
   reg a;
   wire y;
 // khoi tao DUT
 NOT_GATE DUT(
   .a(a),
   .y(y)
 );
  // khoi tao sitmulus
  initial begin 
  #10; a = 0;
  #10; a = 1;
  #10; $finish;
  end
    // Khoi tao monitor
  initial 
    $monitor("a = %b, y = %b", a, y);
  endmodule
   
