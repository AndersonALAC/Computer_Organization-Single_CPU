`timescale 1ns / 1ps

module Reg(
    input clk,
    input rst,
    input RegWrite,
	 input RegDst,
	 input MemtoReg,
    input [4:0]regA,
    input [4:0]regB,
    input [4:0]regW,
    input [31:0]ALU_in,
	 input [31:0]Mem_in,
    output [31:0]Aout,
    output [31:0]Bout
);

	wire [31:0] Write = MemtoReg? Mem_in: ALU_in;
	wire [4:0] Dst = RegDst? regB : regW;
	reg [31:0] register [0:31];
	integer i;
	initial begin
		for (i = 0; i < 32; i = i + 1) register[i] <= 0;
	end
	
	assign Aout = register[regA];
	assign Bout = register[regB];
	
	always@(posedge clk or RegWrite or RegDst) begin
		if(RegWrite) register[Dst] = Write;
	end
	

endmodule 