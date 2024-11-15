`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:40:54 PM
// Design Name: 
// Module Name: adder4bit
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

module adder4bit ( 
    input logic x3, x2, x1, x0, y3, y2, y1, y0, carryin,
    output logic s3, s2, s1, s0, carryout);    
    
    logic c1, c2, c3;    
    
    Full_Adder f0 (carryin, x0, y0, s0, c1);    
    Full_Adder f1 (c1, x1, y1, s1, c2);
    Full_Adder f2 (c2, x2, y2, s2, c3);    
    Full_Adder f3 (c3, x3, y3, s3, carryout);
    
endmodule
