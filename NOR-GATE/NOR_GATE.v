`timescale 1ns / 1ps

module NOR_GATE(
   a,
   b,
   y
);
  input a;
  input b;
  output y;
  wire a;
  wire b;
  wire y;
  assign y = ~(a | b);
  endmodule