`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 08:56:14 AM
// Design Name: 
// Module Name: rotatingword
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

module rotatingword (
    input  logic [1:0] SW,
    output logic [6:0] seg0,
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3
);

    always_comb begin
        case (SW)
            2'b00: begin
                seg0 = 7'b0111001;
                seg1 = 7'b1111001;
                seg2 = 7'b1000110;
                seg3 = 7'b1000110;
            end
            2'b01: begin
                seg0 = 7'b1000110;
                seg1 = 7'b1111001;
                seg2 = 7'b0111001;
                seg3 = 7'b1000110;
            end
            2'b10: begin
                seg0 = 7'b1000111;
                seg1 = 7'b0111001;
                seg2 = 7'b0111001;
                seg3 = 7'b1111001;
            end
            2'b11: begin
                seg0 = 7'b1111001;
                seg1 = 7'b1000110;
                seg2 = 7'b0111001;
                seg3 = 7'b1000110;
            end
            default: begin
                seg0 = 7'b0000000;
                seg1 = 7'b0000000;
                seg2 = 7'b0000000;
                seg3 = 7'b0000000;
            end
        endcase
    end
endmodule