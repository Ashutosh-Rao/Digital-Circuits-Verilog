`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:26:19
// Design Name: 
// Module Name: siso
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


module siso(din,clk,reset,dout);
output dout;
input din,clk,reset;
reg [3:0] s;
always@(posedge clk)
begin
if(reset)
s<=4'b0;
else
begin
s[3] <= din;
s[2] <= s[3];
s[1] <= s[2];
s[0] <= s[1];
end end
assign dout = s[0];
endmodule