`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:13:42 06/12/2022 
// Design Name: 
// Module Name:    ma 
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
module ma(A,wa,ka,re) ;
    
    input A;
   
    output ka;
	 output wa;
	 output re;
	 
	 assign #10 ka=A;
	 assign #10 wa=A;
	 assign #10 re=wa;
	 


endmodule
