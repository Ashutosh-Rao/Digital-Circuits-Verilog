`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 08:34:33
// Design Name: 
// Module Name: comparator_1bit_tb
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


module comparator_1bit_tb();
    reg a,b;
    wire L,E,G;
    comparator_1bit_dataflow_design uut (a,b,L,E,G);
    initial begin
    
    a=1'b0;
    b=1'b0;
    
    #10 a=1'b0;
        b=1'b1;
    #10 a=1'b1;
        b=1'b0;
    #10 a=1'b1;
        b=1'b1;
    #40 $finish;
    end 
endmodule
