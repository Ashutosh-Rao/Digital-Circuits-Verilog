`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 08:31:56
// Design Name: 
// Module Name: comparator_1bit_dataflow_design
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


module comparator_1bit_dataflow_design(
    input a,b,output L,E,G);
    
    assign E= a~^b;
    assign L= (~a)&b;
    assign G= a & (~b);
endmodule
