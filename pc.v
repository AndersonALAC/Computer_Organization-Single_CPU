`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input Jump,
    input Branch,
    input [31:0] imm,
	 input [25:0] ins_addr,
    output reg [31:0] PC
);
	 
	 wire [31:0] PCp4 = PC + 4;
    always@(posedge clk or posedge rst) begin
        if(rst == 0) begin
            PC = 0;
		  case({Jump, Branch})
				00: PC <= PCp4;
				01: PC <= PCp4 + {imm[29:0], 2'b00};
				10: PC <= {PCp4[31:28], ins_addr, 2'b0};
				11: PC <= {PCp4[31:28], ins_addr, 2'b0};
		  endcase
    end

endmodule 