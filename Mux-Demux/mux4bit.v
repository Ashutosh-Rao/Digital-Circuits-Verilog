`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 08:50:13
// Design Name: 
// Module Name: mux4bit
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


module mux4bit(a,s,o);
input [3:0] a;
input [1:0] s;
output o;
reg o;
always @(a or s)
begin
case(s)
2'b00:o=a[0];
2'b01:o=a[1];
2'b10:o=a[2];
2'b11:o=a[3];
endcase
end
endmodule
