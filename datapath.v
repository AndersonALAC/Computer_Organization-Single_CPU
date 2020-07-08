`timescale 1ns / 1ps

module datapath(
    input reg RegDst,
    input reg Jump,
    input reg ALUsrc,
    input reg [1:0] ALUOp,
    input reg Memtoreg,
    input reg MemRead,
    input reg MemWrite,
    input reg RegWrite,
    input reg Branch,

    output [31:0] Inst_out
)


endmodule 