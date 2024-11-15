`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:29:51 PM
// Design Name: 
// Module Name: Full_Adder
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

module Full_Adder( 
    input logic cin, a, b, 
    output logic sum, carry);    
    
    logic sum1, carry1, carry2;
    
    Half_Adder HA1 (a, b, sum1, carry1); 
    Half_Adder HA2 (sum1, cin, sum, carry2);
    or(carry, carry1, carry2);    
    
endmodule