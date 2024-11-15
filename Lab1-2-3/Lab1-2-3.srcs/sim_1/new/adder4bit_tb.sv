`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:42:17 PM
// Design Name: 
// Module Name: adder4bit_tb
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


module adder4bit_tb;    
    logic x3, x2, x1, x0;
    logic y3, y2, y1, y0;    
    logic carryin;
    logic s3, s2, s1, s0;    
    logic carryout;
    
    adder4bit dut (
        .x3(x3), .x2(x2), .x1(x1), .x0(x0),
        .y3(y3), .y2(y2), .y1(y1), .y0(y0),
        .carryin(carryin),
        .s3(s3), .s2(s2), .s1(s1), .s0(s0),
        .carryout(carryout)
    );

    initial begin        
        $monitor("x3=%b x2=%b x1=%b x0=%b y3=%b y2=%b y1=%b y0=%b carryin=%b s3=%b s2=%b s1=%b s0=%b carryout=%b", 
                 x3, x2, x1, x0, y3, y2, y1, y0, carryin, s3, s2, s1, s0, carryout);

        carryin = 0; x3 = 0; x2 = 0; x1 = 0; x0 = 0; y3 = 0; y2 = 0; y1 = 0; y0 = 0; #10;
        carryin = 0; x3 = 0; x2 = 0; x1 = 0; x0 = 1; y3 = 0; y2 = 0; y1 = 0; y0 = 1; #10;
        carryin = 1; x3 = 0; x2 = 0; x1 = 0; x0 = 1; y3 = 0; y2 = 0; y1 = 0; y0 = 1; #10;
        carryin = 1; x3 = 1; x2 = 1; x1 = 1; x0 = 1; y3 = 1; y2 = 1; y1 = 1; y0 = 1; #10;
        carryin = 0; x3 = 1; x2 = 0; x1 = 1; x0 = 0; y3 = 0; y2 = 1; y1 = 0; y0 = 1; #10;
        carryin = 1; x3 = 1; x2 = 1; x1 = 0; x0 = 0; y3 = 1; y2 = 1; y1 = 0; y0 = 1; #10;
        carryin = 1; x3 = 0; x2 = 0; x1 = 0; x0 = 0; y3 = 0; y2 = 0; y1 = 0; y0 = 1; #10;
        carryin = 0; x3 = 1; x2 = 1; x1 = 1; x0 = 1; y3 = 1; y2 = 1; y1 = 1; y0 = 1; #10;
    end
endmodule