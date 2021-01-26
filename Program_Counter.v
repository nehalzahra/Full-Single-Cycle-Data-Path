`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:43 02/10/2020 
// Design Name: 
// Module Name:    Program_Counter 
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
module Program_Counter(
	input clk, reset,
	input [7:0] PC_in,
	output reg [7:0] PC_out
	);
	always @ (posedge clk or posedge reset)
	begin
		if(reset==1'b1)
			PC_out<=0;
		else
			PC_out<=PC_in;
	end

endmodule
