`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:35 06/03/2022
// Design Name:   miantiao
// Module Name:   F:/BaiduNetdiskDownload/counter/bocing.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: miantiao
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bocing;

	// Inputs
	reg sys_clk;
	reg sys_rst_n;

	// Outputs
	wire [24:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	miantiao uut (
		.sys_clk(sys_clk), 
		.sys_rst_n(sys_rst_n), 
		.cnt(cnt)
	);

	initial begin
		// Initialize Inputs
		sys_clk = 0;
		sys_rst_n = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here always #10 clk50M=~clk50M;

	end
	always #10 sys_clk=~sys_clk;
	always #200 sys_rst_n=~sys_rst_n;
	
      
endmodule

