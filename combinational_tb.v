`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2025 01:48:49 PM
// Design Name: 
// Module Name: combinational_tb
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


module combinational_tb;
    reg [3:0] a,b;
    wire [7:0] p;
    
    combinational_mult uut(.a(a), .b(b), .p(p));
    
    initial 
    begin
    a = 1'b0;
    b = 1'b0;
    #10
    a = 3'd3;
    b = 3'd5;
    #10
    a = 3'd4;
    b = 3'd2;
    #10;
    $finish;
    end
    
endmodule
