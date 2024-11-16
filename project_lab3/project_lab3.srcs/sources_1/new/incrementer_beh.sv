`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:05:47 AM
// Design Name: 
// Module Name: incrementer_beh
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

module incrementer_beh (
    input logic [3:0] in,
    output logic [3:0] out
);

    always_comb begin
        if (in == 4'b1111)
            out = 4'b0000;
        else
            out = in + 1;
    end

endmodule