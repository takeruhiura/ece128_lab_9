`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2025 01:40:06 PM
// Design Name: 
// Module Name: sequential_mult
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


module combinational_mult(a,b,p
    );
    
    input [3:0] a,b;
    wire [3:0] m0;
    wire [3:0] m1;
    wire [3:0] m2;
    wire [3:0] m3;


    wire [7:0] s1, s2, s3;
    output [7:0] p;
    
    assign m0 = {4{b[0]}} & a;
    assign m1 = {4{b[1]}} & a;
    assign m2 = {4{b[2]}} & a;
    assign m3 ={4{b[3]}} & a;
    
    assign s1 = m0 + (m1 <<1);
    assign s2 = s1 + (m2 << 2);
    assign s3 = s2 + (m3 << 3);
    assign p = s3;
    
endmodule
