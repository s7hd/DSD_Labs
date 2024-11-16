`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2024 13:27:57
// Design Name: 
// Module Name: sev_seg_decoder
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


module sev_seg(
    input  logic [3:0] bin,      
    output logic  [6:0] seg     
);
 assign seg[0] = (~bin[3] & bin[2] &~ bin[1]& ~bin[0])| (~bin[3] & ~bin[2]& ~bin[1]& bin[0]);
 assign seg[1] =(bin[3]&bin[2]&bin[1])|(bin[2] & bin[1] & ~bin[0])|(bin[3]&bin[1]&bin[0])|(bin[3] &bin[2] &~bin[0])|(~bin[3]&bin[2] &bin[1]&~bin[0]);
 assign seg[2] = (bin[3]&bin[2]&bin[1])|(bin[3]&bin[2]&~bin[0])|(~bin[3]&~bin[2]&bin[1]&~bin[0]);
 assign seg[3] = (~bin [3] & ~bin[2]) | bin[1];
 assign seg[4] =((~bin[3] & ~bin[2] & bin[0])| ( bin[1] & bin[0] & ~bin[3]) | (~bin[3] & ~ bin[2] & bin[1]));
 assign seg[5] =(~bin[3] & bin[0]) | (~bin[3] & bin [2] & ~bin[1]) | (bin[3] & ~bin[2] & ~bin[1] & bin[0]);
 assign seg[6] = (~bin[3] & ~bin[2] & ~bin[1] & bin[0]) | (~bin[3] & bin[2] & ~bin[1] &bin[0]) | (bin[2] & bin[1] & bin[0] )| (bin[3] & ~bin[2] & bin [1] & ~bin[0]) ;
 
 
endmodule