`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:41 02/10/2020 
// Design Name: 
// Module Name:    MUX_N_bit 
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
module Mux_N_bit (
	input [N-1:0] in0, in1,
	output [N-1:0] mux_out,
	input control
	);
	parameter N = 32;
	assign mux_out=control?in1:in0;
endmodule
