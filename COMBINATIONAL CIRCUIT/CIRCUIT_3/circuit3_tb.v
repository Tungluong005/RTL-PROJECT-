`timescale 1ns / 1ps

module circuit3_tb();
  reg x, y,z;
  wire a, b,c;
 // khoi tao dut
 circuit_3 dut(
   .x(x),
   .y(y),
   .z(z),
   .a(a),
   .b(b),
   .c(c)
 );
  // Stimulus
  initial begin
  x = 0; y = 0; z = 0;
  $display("Time=%t, x=%b, y=%b, z=%b", $time,x,y,z);
  #10; x = 0; y = 0; z = 1;
  $display("Time=%t, x=%b, y=%b, z=%b",$time,x,y,z);
  #10; x = 0; y = 1; z = 0;
  $display("Time=%t, x=%b, y=%b, z=%b",$time,x,y,z);
  #10; x = 0; y = 1; z = 1;
  $display("Time=%t, x=%b, y=%b, z=%b",$time,x,y,z);
  #10; x = 1; y = 0;z = 0;
  $display("Time=%t, x=%b, y=%b, z=%b",$time,x,y,z);
  #10; x = 1; y =0; z = 1;
  $display("Time=%t, x=%b, y=%b, z=%b",$time,x,y,z);
  #10; x = 1; y = 1; z = 0;
  $display("Time=%t, x=%b,y=%b, z=%b",$time,x,y,z);
  #10; x = 1; y = 1; z = 1;
  $display("Time=%t, x=%b, y=%b, z=%b",$time,x,y,z);
  #10; $finish;
  end
  // monitor
    initial 
      $monitor("x=%b, y=%b, z=%b,a=%b, b=%b, c=%b",x,y,z,a,b,c);
  endmodule
