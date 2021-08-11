`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:41:17
// Design Name: 
// Module Name: pipo
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


module pipo(din,clk,reset,dout);
output [3:0] dout;
reg [3:0] dout;
input [3:0] din;
input clk,reset;

always@(posedge clk)
begin if (reset)
dout<=0;
else
dout<=din;
end
endmodule
