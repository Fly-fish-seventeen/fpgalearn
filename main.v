`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:21 06/03/2022 
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
module counter
 input clk,rst_n;
         output [3:0] Q;
         always@(posedge clk or negedge rst_n)
       begin
             if(!rst_n)
                  Q<=0;
             else begin
                if(Q<=10)
                     Q<=Q+1;
                else
                     Q<=0;
             end
