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

wire input_B = ALUSrc ? imm_ext : B;

always@(A | input_B | imm_ext | ALUSrc | ALUOp) begin
    case(ALUOp)
        // A + B
        3'b000: begin
            Res <= A + input_B;
        end
        // A - B
        3'b001: begin
            Res <= A - input_B;
        end
        // A ^ B
        3'b010: begin
            res <= A ^ input_B;
        end
        // A nor B
        3'b011: begin
            res <= ~(A | input_B);
        end
        3'b100: begin
            res <= A | input_B;
        end
    endcase
    Zero = (Res == 0) ? 1 : 0;
end

endmodule