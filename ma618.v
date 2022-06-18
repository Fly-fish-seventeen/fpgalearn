`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:00 06/17/2022 
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
module ma(clk,rst,datadelay1,datadelay2,datadelay3,datadelay4,mout1,mout2,mout3,mout4,data2,datavalid,y1,y2,a,h,c,d,hout1,hout2,aout1,aout2,cout1,cout2);
 
input clk;
input rst;

output datadelay1,datadelay2,datadelay3,datadelay4;
output a,h,c,d,aout1,aout2,cout1,cout2,hout1,hout2;
output mout1,mout2,mout3,mout4,y1,y2,data2,datavalid;
 

reg z1,z2,z3,z4,z5,z6,z7,z8,z9;
reg m1,m2,m3,m4,m5,m6,m7,m8,m9;
reg p1,p2,p3,p4,p5,p6,p7,p8,p9;
reg h1,h2,h3,h4,h5;
reg k1,k2,k3,k4,k5,k6;
reg [25:0] cnt;

 
assign data2 = (cnt < 26'd2) ? 1'b1 : 1'b0 ;
assign datavalid = (cnt < 26'd2) ? 1'b0 : 1'b1 ;
 
//计数器在  之间进行计数
always @ (posedge clk or negedge rst) begin
    if(!rst)
         cnt <= 26'd0;
    else if(cnt < 26'd3)
         cnt <= cnt + 1'b1;
    else
         cnt <= 26'd0;
end 
 

always @(posedge clk or negedge rst)
if(!rst)
begin
	z1<=0;
	z2<=0;
	z3<=0;
	z4<=0;
	z5<=0;
	z6<=0;
	z7<=0;
	z8<=0;
	z9<=0;
end
else begin
	z1<=datavalid;
	z2<=z1;
	z3<=z2;
	z4<=z3;
	z5<=z4;
	z6<=z5;
	z7<=z6;
	z8<=z7;
	z9<=z8;
end

assign datadelay1 = z1;
assign datadelay2 = z3;
assign datadelay3 = z7;
assign datadelay4=z9;

always @(posedge clk or negedge rst)
if(!rst)
begin
	m1<=0;
	m2<=0;
	m3<=0;
	m4<=0;
	m5<=0;
	m6<=0;
	m7<=0;
	m8<=0;
	m9<=0;
end
else begin
	m1<=data2;
	m2<=m1;
	m3<=m2;
	m4<=m3;
	m5<=m4;
	m6<=m5;
	m7<=m6;
	m8<=m7;
	m9<=m8;
end
 
assign mout1=m3;
assign mout2=m7;
assign mout3=m5;
assign mout4=m9;
 
 
assign a=mout1|| datadelay1;
assign h=mout2|| datadelay2;
assign c=mout3|| datadelay3;
assign d=mout4|| datadelay4;

always @(posedge clk or negedge rst)
if(!rst)
begin
	p1<=0;
	p2<=0;
	p3<=0;
	p4<=0;
	p5<=0;
	p6<=0;
	p7<=0;
	p8<=0;
	p9<=0;
end
else begin
	p1<=a;
	p2<=p1;
	p3<=p2;
	p4<=p3;
	p5<=p4;
	p6<=p5;
	p7<=p6;
	p8<=p7;
	p9<=p8;
end
assign aout1=p8;

assign aout2=p6;

always @(posedge clk or negedge rst)
if(!rst)
begin
	h1<=0;
	h2<=0;
	h3<=0;
	h4<=0;
	h5<=0;
	
end
else begin
	h1<=c;
	h2<=h1;
	h3<=h2;
	h4<=h3;
	h5<=h4;
	
end
assign cout1=h2;
assign cout2=h4;

always @(posedge clk or negedge rst)
if(!rst)
begin
	k1<=0;
	k2<=0;
	k3<=0;
	k4<=0;
	k5<=0;
	k6<=0;
	
end
else begin
	k1<=h;
	k2<=k1;
	k3<=k2;
	k4<=k3;
	k5<=k4;
	k6<=k5;
	
end
assign hout2=k2;
assign hout1=k6;
assign y1=aout1&&hout1&&cout1&&d;
assign y2=aout2&&hout2&&cout2&&d;
endmodule
