`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:35:59
// Design Name: 
// Module Name: sequence_detector_moore
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


module sequence_detector_moore(
    input rst,clk,in_seq,
    output reg out_detect
    );
    
    reg in_seq_reg;
    parameter size=4,s0=4'b0001,s1=4'b0010,s2=4'b0100,s3=4'b1000;
    reg[size-1:0]state,next_state;
    always@(posedge clk)
    begin
    if(rst)
    begin
    in_seq_reg<=0;
    state<=s0;
    end
    else begin
    in_seq_reg<=in_seq;
    state<=next_state;
    end
   end
   always@(state or in_seq_reg or rst)
   begin
   if(rst)
   next_state<=0;
   else begin
   case(state)
   
   s0 : if(in_seq_reg == 1'b0)
   next_state <=s0;
   else next_state <= s1;
   s1 : if(in_seq_reg == 1'b0)
   next_state <=s2;
   else next_state <= s1;
   
   s1 : if(in_seq_reg == 1'b0)
   next_state <=s2;
   else next_state <= s1;
   s2 : if(in_seq_reg == 1'b0)
   next_state <=s0;
   else next_state <= s3;
   s1 : if(in_seq_reg == 1'b0)
   next_state <=s1;
   else next_state <= s2;
   default : next_state <=s0;
   endcase
   end
   end
   always@(state or rst)
   if (rst) out_detect=0;
   else
   case(state)
   s0: out_detect=0;
   s1: out_detect=0;
   s2: out_detect=0;
   s3: out_detect=1;
   endcase
   endmodule
