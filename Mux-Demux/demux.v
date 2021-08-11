`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 08:59:54
// Design Name: 
// Module Name: demux
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


module demux(a,s,d);
input a;
input [1:0] s;
output [3:0] d;
reg [3:0] d;
always @(a or s)
begin
if(a==1)
begin
case(s)
2'b00:d=4'b1000;
2'b01:d=4'b0100;
2'b10:d=4'b0010;
2'b11:d=4'b0001;
endcase
end else if(a==0)
d=0;
end
endmodule
