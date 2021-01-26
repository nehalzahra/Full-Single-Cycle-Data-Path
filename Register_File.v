`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:40:30 02/10/2020 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(
	input [4:0] read_addr_1, read_addr_2, write_addr,
	input [31:0] write_data,
	input clk, reset, RegWrite,
	output [31:0] read_data_1, read_data_2
	);

	reg [31:0] Regfile [31:0];
	integer k;
	
	assign read_data_1 = Regfile[read_addr_1];
	assign read_data_2 = Regfile[read_addr_2];

	always @(posedge clk or posedge reset) // Ou combines the block of reset into the block of posedge clk
	begin
		if (reset==1'b1)
		begin
			for (k=0; k<32; k=k+1) 
			begin
				Regfile[k] =32'b00000000000000000000000001000000;
			end
		end 
		
		else if (RegWrite == 1'b1) Regfile[write_addr] = write_data; 
	end
	


endmodule 