`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:27:18 PM
// Design Name: 
// Module Name: tb_Half_Adder
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


module tb_Half_Adder;
logic a,b,sum,carry;
Half_Adder a1(a,b,sum,carry);
initial begin
    a=1'b0;
    b=1'b0;
#5
    a=1'b1;
    b=1'b0;       
#5
    a=1'b0;
    b=1'b1;
#5    
    a=1'b1;
    b=1'b1;    
end     
endmodule
