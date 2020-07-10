`timescale 1ns / 1ps

module SingleCPU(
	input clk,
	input rst
	);
	
	wire RegDst;
	wire Jump;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire ALUop;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;
	
	PC P();
	
	Controller C();
	
	Reg R();
	
	datamem D();
	
	ALU A();
	
	ins_mem I();
	
	imm_ex Ex();
	
endmodule 