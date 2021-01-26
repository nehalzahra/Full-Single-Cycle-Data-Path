`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:00 02/10/2020 
// Design Name: 
// Module Name:    Shift_Left_2_Jump 
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
module Shift_Left_2_Jump (
	input [25:0] shift_in,
	output [27:0] shift_out
	);
	assign shift_out[27:0]={shift_in[25:0],2'b00};
endmodule
 