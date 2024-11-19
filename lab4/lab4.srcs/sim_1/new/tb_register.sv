`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 02:59:50 PM
// Design Name: 
// Module Name: tb_register
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


module tb_register;

logic [3:0] d;
logic r;
logic clk=0;
logic e;
logic [3:0] q;

always 
#5 clk=~clk;

register rg (.d(d),.clk(clk),.e(e),.r(r),.q(q));

initial begin

r=1'b0 ; d=4'b0000; e=1'b0;
#8
r=1'b1 ; d=4'b0100; e=1'b1;
#8
r=1'b0 ; d=4'b1000; e=1'b0;
#8
r=1'b1 ; d=4'b0111; e=1'b0;
#8
r=1'b1 ; d=4'b1111; e=1'b0;
#8
r=1'b1; d=4'b0000; e=1'b0; 
#8
r=1'b0 ; d=4'b1000; e=1'b0;  
#8
r=1'b1 ; d=4'b1111; e=1'b0;
#8
r=1'b1 ; d=4'b0110; e=1'b0;
#8
r=1'b0 ; d=4'b0111; e=1'b0;
#8
r=1'b1; d=4'b0111; e=1'b0;
#8
r=1'b1 ; d=4'b0001; e=1'b0;
#8
r=1'b1 ; d=4'b1111; e=1'b0;
#8
r=1'b0 ; d=4'b0111; e=1'b0;
#8
r=1'b1 ; d=4'b0110; e=1'b0;

end
endmodule
