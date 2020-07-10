`timescale 1ns / 1ps

module ins_mem(
    input [31:0] ins_addr,
    output [31:0] Inst_out
);

	wire [31:0] mem[0:15];
	
	assign mem[0] = 32'h00000000;
	assign mem[1] = 32'h00000000;
	assign mem[2] = 32'h00000000;
	assign mem[3] = 32'h00000000;
	assign mem[4] = 32'h00000000;
	assign mem[5] = 32'h00000000;
	assign mem[6] = 32'h00000000;
	assign mem[7] = 32'h00000000;
	assign mem[8] = 32'h00000000;
	assign mem[9] = 32'h00000000;
	assign mem[10] = 32'h00000000;
	assign mem[11] = 32'h00000000;
	assign mem[12] = 32'h00000000;
	assign mem[13] = 32'h00000000;
	assign mem[14] = 32'h00000000;
	assign mem[15] = 32'h00000000;

	
endmodule 