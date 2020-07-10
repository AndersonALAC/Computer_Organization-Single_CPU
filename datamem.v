`timescale 1ns / 1ps

module datamem(
    input [31:0] addr,
    input [31:0] data_in,
    input dataRW,
    output reg [31:0] data_out
);

    reg [31:0] memory [0:31];
	 
	 // read
	 always@(dataRW) begin
		if(dataRW == 0) assign data_out = memory[addr];
	 end
	 
	 // write
	 integer i;
	 initial begin
		for(i = 0; i < 32; i = i + 1) memory[i] <= 0;
	 end
	 
	 always@(dataRW or addr or data_in) begin
		if(dataRW) memory[addr] = data_in;
	 end

endmodule