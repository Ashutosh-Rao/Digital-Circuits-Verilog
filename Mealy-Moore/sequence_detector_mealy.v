`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:19:40
// Design Name: 
// Module Name: sequence_detector_mealy
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


module sequence_detector_mealy(
input rst,clk,in_sequence,output reg out_detect);
reg in_seq_reg;
parameter size = 2,s0=2'b00,s1=2'b01,s2=2'b10;
reg[size-1:0] state, next_state;
always@(posedge clk)
begin
if(rst)
begin
in_seq_reg<=0;
state<=0;
end
else begin
in_seq_reg<=in_seq;
state<=next_state;
end
end
always@(state or in_seq_reg or rst)
begin 
next_state<=0;
if(rst)
out_detect<=0;
else begin
case(state)

s0: if(in_seq_reg == 1'b0)
begin
next_state<=s0;
out_detect<=1'b0;
end
else begin
next_state<=s1;
out_detect<=1'b0;
end

s1: if(in_seq_reg == 1'b0)
begin
next_state<=s2;
out_detect<=1'b0;
end
else begin
next_state<=s1;
out_detect<=1'b0;
end

s2: if(in_seq_reg == 1'b0)
begin
next_state<=s0;
out_detect<=1'b0;
end
else begin
next_state<=s1;
out_detect<=1'b1;
end

default: begin
next_state<=s0;
out_detect<=1'b0;
end
endcase
end end
endmodule
