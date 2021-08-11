`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 09:04:21
// Design Name: 
// Module Name: demux_tb
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


module demux_tb;
reg [0:1] s;
reg a;
wire [0:3] d;
demux uut (.s(s), .a(a), .d(d));
initial begin
#10 s=2'b00;a=1'b0;
#10 s=2'b00;a=1'b1;
#10 s=2'b01;a=1'b0;
#10 s=2'b01;a=1'b1;
#10 s=2'b10;a=1'b0;
#10 s=2'b10;a=1'b1;
#10 s=2'b11;a=1'b0;
#10 s=2'b11;a=1'b1;
#10 $stop;
end  
endmodule
