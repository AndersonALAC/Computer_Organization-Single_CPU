`timescale 1ns / 1ps
module ALU(
    input [31:0] A, // reg output A
    input [31:0] B, // reg output B
    input [31:0] imm_ext, // extended immediate
    input [2:0] ALUOp, // switch operations
    input ALUSrc, // switch imm / regout for B
    
    output [31:0] Res, 
    output wire Zero
)

always@(A | B | imm_ext | ALUSrc | ALUOp) begin
    case(ALUOp)
        // A + B
        3'b000: begin
            
        end
        // A - B
        3'b000: begin
            
        end
        // A ^ B
        3'b000: begin
            
        end
        // A + B
        3'b000: begin
            
        end
end

endmodule