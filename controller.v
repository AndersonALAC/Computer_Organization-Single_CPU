`timescale 1ns / 1ps

module Controller(
    input clk,
    input rst,
    input [31:0] Inst_in,
    input zero,
    input overflow,
    
    output [4:0] state_out,

    output reg RegDst,
    output reg Jump,
    output reg ALUsrc,
    output reg [1:0] ALUOp,
    output reg Memtoreg,
    output reg MemRead,
    output reg MemWrite,
    output reg RegWrite,
    output reg Branch
)

    wire [5:0] OPCode = Inst_in[31:26];
    wire [5:0] ALU_Func = Inst_in[5:0];

    parameter OP_R = 6'b000000;
                OP_LW = 6'b100011;
                OP_SW = 6'b101011;
                OP_BEQ = 6'b000100;
                OP_J = 6'b000010;

    `define datapath_signals {RegDst, ALUsrc, ALUOp, Memtoreg, RegWrite, MemRead, MemWrite, Branch, Jump}

    parameter R_value       = 10'b1010010000;
                LW_value    = 10'b0100111000;
                SW_value    = 10'b0100000100;
                BEQ_value   = 10'b0001000010;
                J_value     = 10'b0000000001;

    always@(posedge clk or posedge rst)begin
        case(OPCode)
            OP_R: `datapath_signals <= R_value;
            OP_LW: `datapath_signals <= LW_value;
            OP_SW: `datapath_signals <= SW_value;
            OP_BEQ: `datapath_signals <= BEQ_value;
            OP_J: `datapath_signals <= J_value;
    end
endmodule