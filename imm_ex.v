`timescale 1ns / 1ps

// immediate extension 16'b -> 32'b

module imm_ex(
    input [15:0] imm_input,
    output [31:0] imm_output
);

    assign imm_output = {16'h0000, imm_input};
endmodule