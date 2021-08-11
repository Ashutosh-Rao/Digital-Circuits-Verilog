`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2020 15:37:09
// Design Name: 
// Module Name: Experiment 2
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
module Experiment_2(input in1,
                    input in2,
                    output y1,y2,y3,y4,y5,y6,y7,y8);
    
assign y1= in1&in2;
assign y2= in1|in2;
assign y3= in1^in2;
assign y4= ~(in1&in2);
assign y5= ~(in1|in2);
assign y6= ~(in1^in2);
assign y7= ~in1;
assign y8= in1;

endmodule
