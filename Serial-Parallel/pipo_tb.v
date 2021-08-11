`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:44:00
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb;
reg [3:0] din;
reg clk, reset;
wire [3:0] dout;
pipo uut(din,clk,reset,dout);

initial begin
reset=0;
clk=0;
din=4'b0000;
#20 reset=1;
#20 reset=0;
#60 din=4'b1001;
#60 din=4'b1010;
#60 din=4'b1111;
#60 $finish;
end
always #10 clk=~clk;
endmodule
