`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:34:07 PM
// Design Name: 
// Module Name: tb_counter
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

module tb_counter;
    logic clk=0;
    logic r;
    logic e;    
    logic load;
    logic up_down;    
    logic [3:0] d;
    counter uut (
        .clk(clk),        
        .r(r),
        .e(e),        
        .load(load),
        .up_down(up_down),        
        .d(d)
    );
    
    always begin        
    #5 clk = ~clk;
    end
    initial begin        
    clk = 0;
    r = 0;        
    e = 0;
    load = 0;        
    up_down = 1;
    
        $display("Time = %0t | d = %b", $time, d);
        #10 load = 1;        
        #10 load = 0;
        #10 up_down = 1;        
        #10 up_down = 1;
        #10 up_down = 1;        
        #10 up_down = 1;
        #10 up_down = 1;        
        #10 up_down = 1;
        #10 up_down = 1;        
        #10 up_down = 1;
        #10 up_down = 1;        
        #10 up_down = 1;
        #10 up_down = 1;        
        #10 up_down = 1;
        #10 up_down = 1;        
        #10 up_down = 1;
        #10 up_down = 1;
        #10 up_down = 0;
        #10 up_down = 0;        
        #10 up_down = 0;
        #10 up_down = 0;        
        #10 up_down = 0;
        #10 up_down = 0;        
        #10 up_down = 0;
        #10 up_down = 0;        
        #10 up_down = 0;
        #10 up_down = 0;        
        #10 up_down = 0;
        #10 up_down = 0;        
        #10 up_down = 0;
        #10 up_down = 0;        
        #10 up_down = 0;
        #10 up_down = 0;
        
        #10 $finish;    
        end
    
        always @(clk or r or load or up_down) begin
        $monitor("Time = %0t | clk = %b | r = %b | load = %b | up_down = %b | d = %b", $time, clk, r, load, up_down, d);    
        end
endmodule

