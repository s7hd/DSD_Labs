`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 05:00:56 PM
// Design Name: 
// Module Name: adder_subtractor_4bit
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


module adder_subtractor_4bit(
    input logic x3, x2, x1, x0,  
    input logic y3, y2, y1, y0,  
    input logic M,
    output logic s3, s2, s1, s0,  
    output logic carryout         
);
    logic y3_inv, y2_inv, y1_inv, y0_inv;
    logic c1, c2, c3; 

    assign y3_inv = (M) ? ~y3 : y3;
    assign y2_inv = (M) ? ~y2 : y2;
    assign y1_inv = (M) ? ~y1 : y1;
    assign y0_inv = (M) ? ~y0 : y0;

    Full_Adder FA0(x0, y0_inv, M, s0, c1);
    Full_Adder FA1(x1, y1_inv, c1, s1, c2);
    Full_Adder FA2(x2, y2_inv, c2, s2, c3);
    Full_Adder FA3(x3, y3_inv, c3, s3, carryout);

endmodule