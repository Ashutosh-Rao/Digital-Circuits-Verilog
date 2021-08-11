`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:05:31
// Design Name: 
// Module Name: ripple_tb
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


module ripple_tb;

reg clk,rstn;
wire [3:0] out;
ripple r0 (.clk(clk), .rstn(rstn), .out(out));
initial begin
rstn = 0;
clk = 0;
#20 rstn =1;
end
always #5 clk =~clk;
endmodule