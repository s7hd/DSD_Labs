`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:08:56 AM
// Design Name: 
// Module Name: priority_encoder_tb
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

module priority_encoder_tb;
    reg [11:0] sw;
    wire [2:0] index;

    priority_encoder uut (
        .sw(sw),
        .index(index)
    );

    initial begin
        sw = 12'b1010_0000_1010;
        #10;
        $display("Test 1 - Expected: 000, Actual: %b", index);

        sw = 12'b1010_0001_0100;
        #10;
        $display("Test 2 - Expected: 001, Actual: %b", index);

        sw = 12'b1010_0010_1000;
        #10;
        $display("Test 3 - Expected: 010, Actual: %b", index);

        sw = 12'b0000_1111_0000;
        #10;
        $display("Test 4 - Expected: 111, Actual: %b", index);

        $finish;
    end
endmodule