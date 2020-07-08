`timescale 1ns / 1ps

module datamem(
    input [31:0] addr,
    input [31:0] data_in,
    input dataRW,
    output reg [31:0] data_out
)

    reg [31:0] memory [0:31];


endmodule