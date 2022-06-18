`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:13:57 06/17/2022
// Design Name:   ma
// Module Name:   F:/BaiduNetdiskDownload/clockdelay/bo.v
// Project Name:  clockdelay
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
	reg clk;
	reg rst;
	reg datavalid;

	// Outputs
	wire datadelay1;
	wire datadelay2;
	wire datadelay3;
	wire datadelay4;

	// Instantiate the Unit Under Test (UUT)
	ma uut (
		.clk(clk), 
		.rst(rst), 
		.datavalid(datavalid), 
		.datadelay1(datadelay1), 
		.datadelay2(datadelay2), 
		.datadelay3(datadelay3),
		.datadelay4(datadelay4)
	);

	initial clk =0;
always #5 clk =~clk;
 
initial begin
rst = 1;
datavalid = 0;
#100
rst = 0;
#25
rst = 1;
#20
datavalid= 1;
#100
datavalid = 0;
#10;
datavalid=1;
#10;datavalid=0;//5时间太短，无效，10可以
#10;datavalid=1;
#10;datavalid=0;
#10;datavalid=1;
#200
$stop;
 
end
 
endmodule
