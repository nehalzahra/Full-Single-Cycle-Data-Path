`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:14 02/10/2020 
// Design Name: 
// Module Name:    ALUControl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALUControl(
	input [1:0] ALUOp,
	input [5:0] funct,
	output [3:0] out_to_ALU
);
	assign out_to_ALU[3]=0;
	assign out_to_ALU[2]=((~ALUOp[1])&(ALUOp[0])) | ((ALUOp[1])&(~ALUOp[0])&(~funct[3])&(~funct[2])&(funct[1])&(~funct[0])) | ((ALUOp[1])&(~ALUOp[0])&(funct[3])&(~funct[2])&(funct[1])&(~funct[0]));
	assign out_to_ALU[1]=((~ALUOp[1])&(~ALUOp[0]))|((~ALUOp[1])&(ALUOp[0])) | ((ALUOp[1])&(~ALUOp[0])&(~funct[3])&(~funct[2])&(~funct[1])&(~funct[0])) | ((ALUOp[1])&(~ALUOp[0])&(~funct[3])&(~funct[2])&(funct[1])&(~funct[0]))|((ALUOp[1])&(~ALUOp[0])&(funct[3])&(~funct[2])&(funct[1])&(~funct[0]));
	assign out_to_ALU[0]=((ALUOp[1])&(~ALUOp[0])&(~funct[3])&(funct[2])&(~funct[1])&(funct[0]))|((ALUOp[1])&(~ALUOp[0])&(funct[3])&(~funct[2])&(funct[1])&(~funct[0]));	
endmodule 