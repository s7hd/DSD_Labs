`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 09:03:29 AM
// Design Name: 
// Module Name: tb_rotatingword
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


module tb_rotatingword;

    logic [1:0] SW;
    logic [6:0] seg0, seg1, seg2, seg3;

    rotatingword dut (
        .SW(SW),
        .seg0(seg0),
        .seg1(seg1),
        .seg2(seg2),
        .seg3(seg3)
    );

    initial begin
        SW = 2'b00;
        #10;
        $display("SW = %b, seg = %b %b %b %b", SW, seg0, seg1, seg2, seg3);

        SW = 2'b01;
        #10;
        $display("SW = %b, seg = %b %b %b %b", SW, seg0, seg1, seg2, seg3);

        SW = 2'b10;
        #10;
        $display("SW = %b, seg = %b %b %b %b", SW, seg0, seg1, seg2, seg3);

        SW = 2'b11;
        #10;
        $display("SW = %b, seg = %b %b %b %b", SW, seg0, seg1, seg2, seg3);

        SW = 2'bxx;
        #10;
        $display("SW = %b, seg = %b %b %b %b", SW, seg0, seg1, seg2, seg3);

        $stop;
    end

endmodule
