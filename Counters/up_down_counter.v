`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:08:24
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(input clk, reset, up_down,output [3:0] counter);
reg [3:0] counter_up_down;
always @ (posedge clk or posedge reset)
begin
if(reset)
counter_up_down <= 4'h0;
else
if(up_down)
counter_up_down <= counter_up_down + 4'd1;
else
counter_up_down <= counter_up_down - 4'd1;
end
assign counter= counter_up_down;
endmodule
