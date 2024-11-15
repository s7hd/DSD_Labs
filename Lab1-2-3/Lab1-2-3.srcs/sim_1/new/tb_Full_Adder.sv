`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:30:28 PM
// Design Name: 
// Module Name: tb_Full_Adder
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


module tb_Full_Adder;
    logic a, b, cin, sum, carry;

    Full_Adder FA(a, b, cin, sum, carry);

    initial begin
        a = 1'b0; b = 1'b0; cin = 1'b0; #5;
        a = 1'b0; b = 1'b0; cin = 1'b1; #5;
        a = 1'b0; b = 1'b1; cin = 1'b0; #5;
        a = 1'b0; b = 1'b1; cin = 1'b1; #5;
        a = 1'b1; b = 1'b0; cin = 1'b0; #5;
        a = 1'b1; b = 1'b0; cin = 1'b1; #5;
        a = 1'b1; b = 1'b1; cin = 1'b0; #5;
        a = 1'b1; b = 1'b1; cin = 1'b1; #5;
    end
endmodule