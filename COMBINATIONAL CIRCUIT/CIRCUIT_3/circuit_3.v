`timescale 1ns / 1ps

module circuit_3(
  x,
  y,
  z,
  a,
  b,
  c
);
  input x;
  input y;
  input z;
  output a;
  output b;
  output c;
  wire x;
  wire y;
  wire z;
  wire a;
  wire b;
  wire c;
  // Internal wire
  wire t1;
  assign t1 = ~x & ~y;
  assign a = (~x & y) | ( y & z);
  assign b = (t1 | (~y & z)) | ((x&y) & ~z);
  assign c = x ^ z;
  endmodule
  