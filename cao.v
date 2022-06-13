`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:41:32 06/10/2022
// Design Name:   try
// Module Name:   F:/BaiduNetdiskDownload/threetry/cao.v
// Project Name:  threetry
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: try
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cao;

	// Inputs
	reg in;
	reg in1;
	reg sys_rst_n;

	// Outputs
	wire k1;
	wire k2;
	wire a;
	wire zhuan1;
	wire zhuan2;
	wire zhuan3;
	wire p1;
	wire p2;
	wire h;
	wire c;
	wire d;
	wire p3;
	wire p4;
	wire p5;
	wire p6;
	wire p7;
	wire p8;

	// Instantiate the Unit Under Test (UUT)
	try uut (
		.in(in), 
		.in1(in1), 
		.sys_rst_n(sys_rst_n), 
		.k1(k1), 
		.k2(k2), 
		.a(a),
		.zhuan1(zhuan1),
		.zhuan2(zhuan2),
		.zhuan3(zhuan3),
		.p1(p1), 
		.p2(p2), 
		.h(h),
		.c(c),
		.d(d),
		.p3(p3), 
		.p4(p4), 
		.p5(p5), 
		.p6(p6), 
		.p7(p7), 
		.p8(p8)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		in1 = 0;
		sys_rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#40;
		in=1;
		in1=0;
		#40;
		in=1;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=1;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=1;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;
		#40;
		in=0;
		in1=1;
		#40;
		in=1;
		in1=0;

	end
      
endmodule

