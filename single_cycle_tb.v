`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:56 02/10/2020
// Design Name:   single_cycle
// Module Name:   E:/Local Disk D/V Semester/DSD/Full_Single_Cycle_Data_Path/single_cycle_tb.v
// Project Name:  Full_Single_Cycle_Data_Path
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: single_cycle
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module single_cycle_tb;

	// Inputs
	reg clkFast;
	reg reset;
	reg [4:0] SwitchSelector;
	reg switchRun;
		reg clkread;
	
	integer count;

	// Outputs
	wire [6:0] Cathode;
	wire [3:0] AN;
	wire LEDIndicator;
	wire [31:0] reg_read_data_1;

	// Instantiate the Unit Under Test (UUT)
	single_cycle uut (
		.clkFast(clkFast), 
		.reset(reset), 
		.SwitchSelector(SwitchSelector), 
		.switchRun(switchRun), 
		.Cathode(Cathode), 
		.AN(AN), 
		.LEDIndicator(LEDIndicator), 
		.reg_read_data_1(reg_read_data_1)
	);

	initial begin
		// Initialize Inputs
		count = 0;
		clkFast = 0;
		reset = 1;
		switchRun = 0;
		SwitchSelector = 5'd0;
		clkread = 0;
		#4 reset=0;
		#3000;
		#50 $stop;
	end

	always begin #1 clkFast=~clkFast; end
	always begin #200 clkread = ~clkread; end 
	
	always @(posedge clkread)
	begin
		$display ("Time: %d", count);
	  			SwitchSelector = 5'd16;
	  		#10 
	  			SwitchSelector = 5'd17;
	  		#10 
	  			SwitchSelector = 5'd18;
	  		#10 
				SwitchSelector = 5'd19;
	  		#10 
	  			SwitchSelector = 5'd20;
	  		#10 
	  			SwitchSelector = 5'd21;
	  		#10 
	  			SwitchSelector = 5'd22;
	  		#10 
	  			SwitchSelector = 5'd23;
	  		#10 
	  			SwitchSelector = 5'd8;
	  		#10 
	  			SwitchSelector = 5'd9;
	  		#10 
	  			SwitchSelector = 5'd10;
	  		#10 
	  			SwitchSelector = 5'd11;
	  		#10 
	  			SwitchSelector = 5'd12;
	  		#10 
	  			SwitchSelector = 5'd13;
	  		#10 
	  			SwitchSelector = 5'd14;
	  		#10 
	  			SwitchSelector = 5'd15;
	  		#10 
	  			SwitchSelector = 5'd24;
	  		#10 
	  			SwitchSelector = 5'd25;
	  		#10
			
			#2 switchRun = 1;
			#32 switchRun = 0;
			count = count + 1;

	end
      
endmodule

