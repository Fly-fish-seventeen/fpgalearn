`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:14:38 06/12/2022
// Design Name:   ma
// Module Name:   F:/BaiduNetdiskDownload/LA/bo.v
// Project Name:  LA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ma
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bo;

	// Inputs
	reg A;

	// Outputs
	wire wa;
	wire ka;
	wire re;

	// Instantiate the Unit Under Test (UUT)
	ma uut (
		.A(A), 
		.wa(wa), 
		.re(re),
		.ka(ka)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A=1;
		#10;
		A=0;
		#10;
		A=1;
		#10;
		A=0;
        
		// Add stimulus here

	end
      
endmodule

