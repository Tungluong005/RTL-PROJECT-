`timescale 1ns / 1ps

module circuit_1(
  a,
  b,
  c,
  y
);
  input a;
  input b;
  input c;
  output y;
  wire a;
  wire b;
  wire c;
  // Internal wire
  wire t1;
  wire t2;
  wire t3;
  // mo ta
  assign t1 = a & b;
  assign t2 = b & c;
  assign t3 = a & c;
  assign y = (t1 | t2) | t3;
  endmodule