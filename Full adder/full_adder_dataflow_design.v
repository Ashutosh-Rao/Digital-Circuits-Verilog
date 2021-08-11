`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2020 12:25:52
// Design Name: 
// Module Name: full_adder_dataflow_design
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


module full_adder_dataflow_design(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
    assign x=a^b;
    assign sum=x^cin;
    assign y=x&cin;
    assign z=a&b;
    assign carry=y|z;
endmodule
