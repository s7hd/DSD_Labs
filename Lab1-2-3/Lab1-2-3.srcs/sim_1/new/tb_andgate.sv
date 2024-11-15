`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 01:10:10 PM
// Design Name: 
// Module Name: tb_andgate
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


module tb_andgate;
// Declare testbench signals
logic a, b;
logic f;
// Instantiate the andgate module
andgate dut (
.a(a),
.b(b),
.f(f)
);
// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t f");
$display("------------------------");
// Apply test vectors with $display statements
a = 0; b = 0; #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
a = 0; b = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
a = 1; b = 0; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
a = 1; b = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, f);
// End simulation
$finish;
end
endmodule
