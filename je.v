`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:23:21 06/26/2022
// Design Name:   main
// Module Name:   F:/BaiduNetdiskDownload/delay40/je.v
// Project Name:  delay40
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module je;

	// Inputs
	reg clk;
	reg rst;
	reg data;
	reg data2;

	// Outputs
	wire datadelay0;
	wire datadelay2;
	wire datadelay8;
	wire datadelay19;
	wire datadelay18;
	wire datadelay14;
	wire delay0;
	wire delay1;
	wire hebo;
	wire delay5;
	wire gie;
	wire gie2;
	wire b3;
	wire [4:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk), 
		.rst(rst), 
		.data(data), 
		.datadelay0(datadelay0), 
		.datadelay2(datadelay2), 
		.datadelay8(datadelay8), 
		.datadelay19(datadelay19), 
		.datadelay18(datadelay18), 
		.datadelay14(datadelay14), 
		.data2(data2), 
		.delay0(delay0), 
		.delay1(delay1), 
		.hebo(hebo), 
		.delay5(delay5), 
		.gie(gie), 
		.gie2(gie2),
		.b3(b3),
		.cnt(cnt)
	);

initial begin
		// Initialize Inputs
		clk = 1;
		rst = 0;
		data = 0;
		data2=0;
		// Wait 100 ns for global reset to finish
		#100;
		rst=1;
		
		data=1;data2=1;
		#10;
		data=0;data2=0;
		#180;
		
      
		data=1;data2=1;
		
		#10;
		data=0;data2=0;
		#180;
		data=0;data2=0;
		#190;
		data=1;data2=1;
		#10;
		
      
		data=0;data2=0;
		#180;data=1;data2=1;
		#10;
		data=0;data2=0;
		#180;
		
      
		data=0;data2=0;
		#190;
		data=1;data2=1;
		#10;
		data=0;data2=0;
		#180;
	
      
		 
		// Add stimulus here

	end
   always #5 clk=~clk;
      
endmodule

