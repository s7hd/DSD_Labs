`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:50:05 PM
// Design Name: 
// Module Name: Dlatch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module Dlatch(
input logic d,
input logic clk,
input logic r,
//input logic clk1,
input logic e,
output logic q,
output logic qbar);
 logic y1,y2,q2,clk1;
 
assign y1= ~(d&clk1);
assign y2=~(~d&clk1);
assign q2= ~(y1&qbar);
assign qbar=~(y2&q);
assign q=q2&r;
assign clk1=clk&e;
endmodule
 