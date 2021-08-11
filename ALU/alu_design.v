`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:52:44
// Design Name: 
// Module Name: alu_design
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


module alu_design(
input [3:0] a,
input [3:0] b,
input [2:0] opcode,
output [7:0] outdata);

reg [7:0] res;

assign outdata = res;
always @ (opcode,a,b)
begin
case(opcode)
3'b001: res= a+b;
3'b010: res= a-b;
3'b011: res= a*b;
3'b100: res= ~a;
3'b101: res= a&b;
3'b110: res= a|b;
3'b111: res= a^b;
default: res=4'bx;
endcase
end
endmodule
