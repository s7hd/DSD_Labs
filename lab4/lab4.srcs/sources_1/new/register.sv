`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 02:34:27 PM
// Design Name: 
// Module Name: register
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


module register 
(
input logic [3:0]d,
input logic clk,
input logic r,
input logic e,
output logic [3:0]q
   );
   
 flipflop f0(.clk(clk),.r(r),.e(e),.d(d[0]),.q(q[0]));
 flipflop f1(.clk(clk),.r(r),.e(e),.d(d[1]),.q(q[1]));
 flipflop f2(.clk(clk),.r(r),.e(e),.d(d[2]),.q(q[2]));
 flipflop f3(.clk(clk),.r(r),.e(e),.d(d[3]),.q(q[3]));
 
endmodule
