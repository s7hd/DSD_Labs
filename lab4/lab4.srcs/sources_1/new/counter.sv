`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 12:24:33 PM
// Design Name: 
// Module Name: counter
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

module counter(       
    input logic clk,
    input logic r,        
    input logic e,
    input logic load,       
    input logic up_down,
    output logic [3:0] d);  
       
    logic [3:0] next_state;  
          
    assign d[0]= load ? d[0] : (~d[0]);
    assign d[1]= load ? d[1] : up_down ? ((~d[1]&~d[0])|(~d[1]&d[0])) : ((~d[1]&d[0])|(d[1]&~d[0])) ;    
    assign d[2]= load ? d[2] : up_down ? ((~d[3]&~d[2]&~d[1]&~d[0])|(d[2]&~d[1]&d[0])|(d[2]&d[1]&~d[0])) : (~d[2]^(d[1]&d[0]));
    assign d[3]= load ? d[3] : up_down ? ((d[3]&d[2]&~d[1])|(d[3]&~d[1]&d[0])|(d[3]&~d[2]&d[1])|(d[3]&d[1]&~d[0])) : (~d[3]^(d[1]&d[2]&d[0]));      
    
    flipflop ff0 (.d(next_state[0]), .clk(clk), .r(r), .q(d[0]));
    flipflop ff1 (.d(next_state[1]), .clk(clk), .r(r), .q(d[1]));      
    flipflop ff2 (.d(next_state[2]), .clk(clk), .r(r), .q(d[2]));
    flipflop ff3 (.d(next_state[3]), .clk(clk), .r(r), .q(d[3])); 
    
    endmodule