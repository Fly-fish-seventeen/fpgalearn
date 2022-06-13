`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:21 06/10/2022 
// Design Name: 
// Module Name:    try 
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
module try(
	input  in,
	input  in1,
	input sys_rst_n,
	output  k1,
	output  k2,
	output  p1,output a,output zhuan1,output zhuan2,output zhuan3,
	output  p2,output  p3,output  p4,output  p5,output  p6,output  p7,output  p8,
	
	output h,output c,output d,wire fa1,wire fa2,
	wire  z1,
	wire jian1,wire jian2,wire jian3,
	wire  z2,
	wire  z3,
	wire  z4,
	wire  z5,
	wire  z6,
	wire  z7,
	wire  z8
	
	
);


assign #10 zhuan1=a;
assign #10 fa1=zhuan1;
assign #10 fa2=fa1;
assign #10 jian1=h;
assign #10 jian2=jian1;
assign #10 jian3=c;

assign k1=p1&&p3&&p5&&p7;
assign k2=p2&&p4&&p6&&p8;

assign a=z1||z5;
assign h=z2||z6;
assign c=z3||z7;
assign d=z4||z8;


assign z1=in;
assign #10 z2=in;
assign #30 z3=in;
assign #40 z4=in;
assign #10 z5=in1;
assign #30 z6=in1;
assign #20 z7=in1;
assign #40 z8=in1;
assign p7=d;
assign p8=d;
assign #10 p1=fa2;
assign p2=fa2;
assign #10 p4=h;
assign #10 p3=jian2;
assign #10 p5=c;
assign #10 p6=jian3;



endmodule
