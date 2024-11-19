`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:03:41 PM
// Design Name: 
// Module Name: tb_Dlatch
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


module tb_Dlatch;


logic d;
logic clk=0;
logic r;
logic q;
logic q2;
logic e;
logic qbar;
always 
#5 clk=~clk;

Dlatch D (.d(d),.clk(clk),.e(e),.r(r),.q(q),.qbar(qbar));
initial begin

e=1; r=1'b1 ; d=1'b0; 
#8
e=0; r=1'b0 ; d=1'b0;
#8
e=0; r=1'b1 ; d=1'b1; 
#8
e=1; r=1'b1 ; d=1'b0; 
#8
e=0;r=1'b1 ; d=1'b1;  // q = 1
#8
e=1;r=1'b1 ; d=1'b1; // q should be zero
#8
e=1;r=1'b1 ; d=1'b1;  // q = 0
$finish;
end
endmodule
