`timescale 1ns / 1ps

module Circuit_2(
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
  wire y;
  assign y =(~a & ~b) |(~a & ~c);
  endmodule