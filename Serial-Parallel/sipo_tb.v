`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:37:44
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb;
reg din,clk,reset;
wire [3:0] dout;
sipo uut(din,clk,reset,dout);

initial begin
reset=0;clk=0;din=0;
#20 reset =1;
#20 reset =0;
#20 din=1;
#20 din=0;
#20 din=1;
#20 din=0;
#20 din=1;
#20 $finish;
end 
always #10 clk=~clk;
endmodule
