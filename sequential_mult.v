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


module sequential_mult(
    input clk,
    input rst,
    input [3:0] a,
    input [3:0] b,
    output reg [7:0] p
    );
    reg [7:0] multiplicand, partial_product;
    reg [3:0] operand_b;
    reg [2:0] shift_count;
    reg [2:0] PS,NS;
    
    parameter s0_idle=3'd0,s1_multiply=3'd1,s2_update=3'd2,s3_done=3'd3;
    
    always @(posedge clk)
    begin
        if(rst) begin
            PS<=s0_idle;
           // p = 0;
            end
        else
            PS<=NS;
    end
    
    always @(posedge clk) begin
    case(PS)
        s0_idle:
        begin
        multiplicand<={4'b0,a};
        partial_product<=8'b0;
        shift_count<=3'b0;
        operand_b<=b;
        NS<=s1_multiply;
        end
        s1_multiply: begin 
        if(operand_b[0]==0 && shift_count<4) begin
            multiplicand<=multiplicand<<1;
            partial_product<=partial_product;
            shift_count=shift_count+1;
            operand_b<=operand_b>>1;
            NS<=s1_multiply;
            end
        else if(operand_b[0]==1&&shift_count<4) begin
            multiplicand<=multiplicand<<1;
            partial_product<=partial_product+multiplicand;
            shift_count=shift_count+1;
            operand_b<=operand_b>>1;
            NS<=s1_multiply;
            end
            else if(shift_count==4) begin
            NS<=s2_update;
            end
            end
         
         
         
         //
            
        s2_update: begin
        
        
            NS<=s3_done;
            p <= partial_product;
           
        end
        s3_done: begin
            NS <= s0_idle;
            end
            
        endcase
    end
endmodule
