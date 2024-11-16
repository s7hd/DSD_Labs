`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:06:31 AM
// Design Name: 
// Module Name: tb_incrementer_beh
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


`timescale 1ns / 1ps

module tb_incrementer_beh;

    logic [3:0] in;
    logic [3:0] out;

    incrementer_beh uut (
        .in(in),
        .out(out)
    );

    initial begin
        $display("Input | Output");
        $display("----------------");

        for (int i = 0; i < 16; i++) begin
            in = i;
            #5;
            $display("  %b   |   %b", in, out);
        end

        $finish;
    end

endmodule
