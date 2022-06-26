`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:34:39 06/24/2022 
// Design Name: 
// Module Name:    main 
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
module main(clk,rst,data,datadelay0,datadelay2,datadelay8,datadelay19,datadelay18,datadelay14,data2,delay0,delay1,cnt,hebo,delay5,gie,b3,gie2
    );
	 input clk,rst,data,data2;
	 output datadelay0,datadelay2,datadelay8,delay0,delay1,hebo,delay5,datadelay19,datadelay18,datadelay14,gie,b3,cnt,gie2;
	 reg z1,z2,z3,z4,z5,z6,z7,z8,z9;
	 reg h1,h2,h3,h4,h5,h6;
	 wire data2delay19,datade2lay18,datade2lay12;
	 reg [4:0] cnt;
	 reg p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20;
	 reg w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20;
	 reg b1;reg b2;reg  b3;
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
	z1<=data;
	z2<=z1;
	z3<=z2;
	z4<=z3;
	z5<=z4;
	z6<=z5;
	z7<=z6;
	z8<=z7;
	z9<=z8;
end


assign datadelay0=z1;
assign datadelay2=z3;
assign datadelay8=z9;

always @(posedge clk or negedge rst)
if(!rst)
begin
	h1<=0;
	h2<=0;
	h3<=0;
	h4<=0;
	h5<=0;
	h6<=0;
	
end
else begin
	h1<=data2;
	h2<=h1;
	h3<=h2;
	h4<=h3;
	h5<=h4;
	h6<=h5;
	
end
assign delay0=h1;assign delay1=h2;assign delay5=h6;


	assign hebo=delay0||delay1||delay5||datadelay0||datadelay2||datadelay8;


always @(negedge clk or negedge rst)
if(!rst)
begin
cnt<=0;
b1<=0;
b2<=0;
b3<=0;
end
else begin
	cnt<=cnt+1;
	if (cnt==1)
	b1<=hebo;
	if (cnt==2)
	b2<=hebo;
	if (cnt==5)
	b3<=hebo;
	if (cnt>17)
	begin 
	cnt<=0;
	end
	
end





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
	p10<=0;
	p11<=0;
	p12<=0;
	p13<=0;
	p14<=0;
	p15<=0;
	p16<=0;
	p17<=0;
	p18<=0;
	p19<=0;
	p20<=0;

	
end
else begin
	p1<=hebo;
	p2<=p1;
	p3<=p2;
	p4<=p3;
	p5<=p4;
	p6<=p5;
	p7<=p6;
	p8<=p7;
	p9<=p8;
	p10<=p9;
	p11<=p10;
	p12<=p11;
	p13<=p12;
	p14<=p13;
	p15<=p14;
	p16<=p15;
	p17<=p16;
	p18<=p17;
	p19<=p18;
	p20<=p19;

	
end
assign datadelay19=p20;assign datadelay18=p19;assign datadelay14=p15;

always @(posedge clk or negedge rst)
if(!rst)
begin
	w1<=0;
	w2<=0;
	w3<=0;
	w4<=0;
	w5<=0;
	w6<=0;
	w7<=0;
	w8<=0;
	w9<=0;
	w10<=0;
	w11<=0;
	w12<=0;
	w13<=0;
	w14<=0;
	w15<=0;
	w16<=0;
	w17<=0;
	w18<=0;
	w19<=0;
	w20<=0;

	
end
else begin
	w1<=hebo;
	w2<=w1;
	w3<=w2;
	w4<=w3;
	w5<=w4;
	w6<=w5;
	w7<=w6;
	w8<=w7;
	w9<=w8;
	w10<=w9;
	w11<=w10;
	w12<=w11;
	w13<=w12;
	w14<=w13;
	w15<=w14;
	w16<=w15;
	w17<=w16;
	w18<=w17;
	w19<=w18;
	w20<=w19;

	
end
assign data2delay19=w20;assign datade2lay18=w18;assign datade2lay12=w12;

assign gie=datadelay19&&datadelay18&&datadelay14;
assign gie2=data2delay19&&datade2lay18&&datade2lay12;

endmodule
