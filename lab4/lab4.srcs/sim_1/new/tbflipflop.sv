`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 08:29:27 AM
// Design Name: 
// Module Name: tbflipflop
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


module tbflipflop;

logic d;
logic clk=0;
logic r;
logic q;
logic e;
logic qbar;

always 
#5 clk=~clk;

flipflop ff (.d(d),.clk(clk),.e(e),.r(r),.q(q),.qbar(qbar));

initial begin

e=0; r=1'b0 ; d=1'b0; 
#8
e=1; r=1'b1 ; d=1'b0;;
#8
e=1; r=1'b0 ; d=1'b1;
#8
e=1; r=1'b1 ; d=1'b0; 
#8
e=1; r=1'b1 ; d=1'b1;  // q = 1
#8
e=1; r=1'b1; d=1'b0;  // q should be zero
#8
e=0; r=1'b1 ; d=1'b1;  // q = 0
#8
e=1; r=1'b1 ; d=1'b1;  // q = 0
#8
e=1; r=1'b1 ; d=1'b0;  // q = 0
#8
e=1; r=1'b1 ; d=1'b0;  // q = 0
#8
e=1; r=1'b1; d=1'b0;  // q should be zero
#8
e=1; r=1'b1 ; d=1'b1;  // q = 0
#8
e=1; r=1'b1 ; d=1'b1;  // q = 0
#8
e=1; r=1'b1 ; d=1'b0;  // q = 0
#8
e=1; r=1'b1 ; d=1'b0;  // q = 0

end
endmodule
