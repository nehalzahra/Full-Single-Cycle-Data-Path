`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:34 02/10/2020 
// Design Name: 
// Module Name:    Dff_asy 
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
module Dff_asy (
	input d, clk, rst,
	output reg q
	);
	
	always @ (posedge clk or posedge rst)
		if (rst == 1) q <= 0;
		else q <= d;


endmodule

