`timescale 1ns / 1ps

module ALU(
    input [31:0] ReadA, // reg output A
    input [31:0] ReadB, // reg output B
    input [31:0] imm_ext, // extended immediate
    input [2:0] ALUOp, // switch operations
    input ALUSrc, // switch imm / regout for B
    
    output [31:0] Res, 
    output wire Zero
);

	wire input_B = ALUSrc ? imm_ext : ReadB;

	always@(A | input_B | imm_ext | ALUSrc | ALUOp) begin
		 case(ALUOp)
			  // A + B
			  3'b000: begin
					Res <= ReadA + input_B;
			  end
			  // A - B
			  3'b001: begin
					Res <= ReadA - input_B;
			  end
			  // A ^ B
			  3'b010: begin
					res <= ReadA ^ input_B;
			  end
			  // A nor B
			  3'b011: begin
					res <= ~(ReadA | input_B);
			  end
			  3'b100: begin
					res <= ReadA | input_B;
			  end
		 endcase
		 Zero = (Res == 0) ? 1 : 0;
	end

endmodule 