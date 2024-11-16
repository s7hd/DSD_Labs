`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:07:46 AM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder (
    input [11:0] sw,
    output reg [2:0] index
);
    always @(*) begin
        if (sw[3:0] == sw[11:8])
            index = 3'b000;
        else if (sw[4:1] == sw[11:8])
            index = 3'b001;
        else if (sw[5:2] == sw[11:8])
            index = 3'b010;
        else if (sw[6:3] == sw[11:8])
            index = 3'b011;
        else if (sw[7:4] == sw[11:8])
            index = 3'b100;
        else
            index = 3'b111;
    end
endmodule