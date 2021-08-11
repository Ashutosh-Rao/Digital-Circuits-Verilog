`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:56:46
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
wire [7:0] outdata;
reg [3:0] a,b;
reg [2:0] opcode;
integer i;

alu_design dut(a,b,opcode,outdata);

initial begin
a=4'b0101;
b=4'b1001;
for(i=0;i<8;i=i+1)
#5 opcode = i;
end
endmodule
