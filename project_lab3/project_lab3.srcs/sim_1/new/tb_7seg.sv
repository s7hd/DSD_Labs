`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 11:15:59 AM
// Design Name: 
// Module Name: tb_7seg
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


module tb_7seg;

    logic [3:0] bin;
    logic [6:0] seg;
    seven_seg_decoder uut (
        .bin(bin),
        .seg(seg)) ;  

    initial begin

    bin = 4'b0000;
    #5
    bin = 4'b0001;
    #5
    bin = 4'b0010;
     #5
    bin=4'b0011;
    #5
    bin=4'b0100;
    #5
    bin=4'b0101;
    #5
    bin=4'b0110;
    #5
    bin=4'b0111;
    #5
    bin=4'b1000;
    #5
    bin=4'b1001;
    #5
    bin=4'b1010;
    #5
    bin=4'b1011;
     #5
    bin=4'b1100;
     #5
    bin=4'b1101;
     #5
    bin=4'b1110;
     #5
    bin=4'b1111;
        $finish;
    end
    
endmodule