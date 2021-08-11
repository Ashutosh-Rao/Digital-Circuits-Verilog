`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 08:53:35
// Design Name: 
// Module Name: mux4bit_tb
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


module mux4bit_tb;
reg [3:0] a;
reg [1:0] s;
wire o;

mux4bit uut (.a(a), .s(s), .o(o));
initial begin
#10 a=4'b1010;
#10 s=2'b00;
#10 s=2'b01;
#10 s=2'b10;
#10 s=2'b11;
#10 $stop;
end 
endmodule
