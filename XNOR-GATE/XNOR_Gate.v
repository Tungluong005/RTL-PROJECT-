`timescale 1ns / 1ps

module XNOR_Gate(
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
  assign y = a ^~ b;
  endmodule