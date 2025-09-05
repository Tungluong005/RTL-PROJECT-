`timescale 1ns / 1ps

module circuit1_tb();
  reg a, b, c;
  wire y;
 // Dut
 circuit_1 DUT(
   .a(a),
   .b(b),
   .c(c),
   .y(y)
  );
  // Stimulus
  initial begin
  a = 0; b = 0; c = 0;
  $display("Time=%t, a=%b, b=%b, c=%b",$time,a,b,c);
  #10; a = 0; b = 0; c = 1;
  $display("Time=%t, a=%b, b=%b, c=%b",$time,a,b,c);
  #10; a = 0; b = 1; c  = 0;
  $display("Time=%t, a=%b, b=%b, c=%b",$time,a,b,c);
  #10; a = 0;  b = 1; c = 1;
  $display("Time=%t, a =%b,b =%b, c=%b",$time,a,b,c);
  #10; a = 1; b= 0; c= 0;
  $display("Time=%t, a=%b, b =%b, c=%b",$time,a,b,c);
  #10; a = 1; b = 0; c = 1;
  $display("Time=%t, a=%b, b=%b, c=%b", $time,a,b,c);
  #10; a = 1; b = 1; c = 0;
  $display("Time=%t, a= %b, b=%b, c=%b",$time,a,b,c);
  #10; a = 1; b = 1; c = 1;
  $display("Time=%t, a=%b, b=%b, c=%b",$time,a,b,c);
  #10; $finish;
  end
  // Monitor
   initial
    $monitor("a=%b, b=%b, c=%b, y =%b", a,b,c,y);
  endmodule
  
