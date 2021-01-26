`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:24 02/10/2020 
// Design Name: 
// Module Name:    Shift_Left_2_Branch 
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
module Shift_Left_2_Branch(
	input [31:0] shift_in,
	output [31:0] shift_out
	);
	assign shift_out[31:0]={shift_in[29:0],2'b00};
	
endmodule
