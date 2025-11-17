`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2025 01:49:39 PM
// Design Name: 
// Module Name: sequential_tb
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


module sequential_tb;
    reg clk,rst;
    reg [3:0] a,b;
    wire [7:0] p;
    
    sequential_mult uut(.clk(clk),.rst(rst),.a(a), .b(b), .p(p));
    
    always #5 clk=~clk;
    initial 
    begin
    clk=0;
    rst=1;
    
    
    #10 rst=0;
    
 
    a = 3'd3;
    b = 3'd5;
    #300;
    a = 3'd4;
    b = 3'd2;
    #300;
    $finish;
    end
endmodule
