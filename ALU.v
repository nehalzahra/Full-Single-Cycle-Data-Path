`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:28 02/10/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU (
	input [31:0] inA, inB,
	output reg [31:0] alu_out,
	output reg zero,
	input [3:0] control
	);
	always @ (control or inA or inB)
	begin
		case (control)
		4'b0000:begin zero<=0; alu_out<=inA&inB; end
		4'b0001:begin zero<=0; alu_out<=inA|inB; end
		4'b0010:begin zero<=0; alu_out<=inA+inB; end
		4'b0110:begin if(inA==inB) zero<=1; else zero<=0; alu_out<=inA-inB; end
		4'b0111:begin zero<=0; if(inA-inB>=32'h8000_0000) alu_out<=32'b1; else alu_out<=32'b0; end// how to implement signed number
		default: begin zero<=0; alu_out<=inA; end
		endcase
	end
endmodule