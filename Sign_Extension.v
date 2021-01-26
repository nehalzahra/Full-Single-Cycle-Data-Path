`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:56:30 02/10/2020 
// Design Name: 
// Module Name:    Sign_Extension 
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
module Sign_Extension (
	input [15:0] sign_in,
	output [31:0] sign_out
	);
	assign sign_out[15:0]=sign_in[15:0];
	assign sign_out[31:16]=sign_in[15]?16'b1111_1111_1111_1111:16'b0;
	
endmodule 