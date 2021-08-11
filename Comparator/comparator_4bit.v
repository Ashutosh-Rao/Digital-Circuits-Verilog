`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 08:39:10
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit(
    input [3:0] a,input [3:0] b,
    output reg eq,output reg lt,output reg gt);
    always@(a,b)
    begin
    if(a==b)
    begin
    eq= 1'b1;
    gt= 1'b0;
    lt= 1'b0;
    end
    else if (a>b)
    begin
    eq = 1'b0;
    gt = 1'b1;
    lt = 1'b0;
    end
    else
    begin
        eq= 1'b0;
        gt= 1'b0;
        lt= 1'b1;
    end
    end
    endmodule
       