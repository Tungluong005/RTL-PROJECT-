`timescale 1ns / 1ps

module NAND_gate(
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
  assign y = ~(a & b);
  endmodule