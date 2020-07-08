`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input PCWrite,
    input PCSrc,
    input [31:0] imm,
    output reg [31:0] addr
);

    always@(posedge clk or posedge rst) begin
        if(rst == 0) begin
            addr = 0;
        end else if (PCWrite) begin
            if (PCSrc) addr = addr + 4 + imm*4;
            else addr = addr + 4;
        end
    end

endmodule 