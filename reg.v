`timescale 1ns / 1ps

module reg(
    input clk,
    input rst,
    input RegWrite,
    input [4:0]regA,
    input [4:0]regB,
    input [4:0]regW,
    input [31:0]Wdat,
    output [31:0]Adat,
    output [31;0]Bdat
)

