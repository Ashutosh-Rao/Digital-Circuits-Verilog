`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:30:48
// Design Name: 
// Module Name: siso_tb
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


module siso_tb();
wire dout;
reg din,clk,reset;
siso dut(din,clk,reset,dout);
initial begin
reset=0; clk=0; din=0;
#5 reset=1;
#10 reset=0;
#10 din=1;
#20 din=0;
#20 din=1;
#20 din=0;
#40 $stop;
end
always #10 clk =! clk;
endmodule
