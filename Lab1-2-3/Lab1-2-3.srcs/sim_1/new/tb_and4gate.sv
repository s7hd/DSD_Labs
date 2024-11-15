`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 01:35:06 PM
// Design Name: 
// Module Name: tb_and4gate
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


module tb_and4gate;
    logic a, b, c, d;
    logic f;

    and4gate dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .f(f)
    );

    initial begin
        $display("Time\t a\t b\t c\t d\t f");
        $display("-----------------------------");

        a = 0; b = 0; c = 0; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 0; b = 0; c = 0; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 0; b = 0; c = 1; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 0; b = 0; c = 1; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 0; b = 1; c = 0; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 0; b = 1; c = 0; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 0; b = 1; c = 1; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 0; b = 1; c = 1; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 0; c = 0; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 0; c = 0; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 0; c = 1; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 0; c = 1; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 1; c = 0; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 1; c = 0; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 1; c = 1; d = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        a = 1; b = 1; c = 1; d = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

        $finish;
    end

endmodule