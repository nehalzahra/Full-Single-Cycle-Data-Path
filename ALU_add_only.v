`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:16 02/10/2020 
// Design Name: 
// Module Name:    ALU_add_only 
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
module ALU_add_only (
	input [31:0] inA, inB,
	output [31:0] add_out
	);
	assign add_out=inA+inB;
	
	
endmodule 