`timescale 1ns / 1ps


module Or_gate(
  a,
  b,
  y
);
  // input
  input a;
  input b;
  // output
  output y;
  // kieu du lieu
  wire a;
  wire b;
  wire y;
  assign y = a | b;
  endmodule
  
