`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2020 15:44:27
// Design Name: 
// Module Name: Experiment_2_tb
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


module Experiment_2_tb;

reg in1;
reg in2;

wire y1,y2,y3,y4,y5,y6,y7,y8;

Experiment_2 uut (in1,in2,y1,y2,y3,y4,y5,y6,y7,y8);
initial
begin
$monitor("%t in1=%b in2=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b y8=%b",
$time,in1,in2,y1,y2,y3,y4,y5,y6,y7,y8);

in1=0;
in2=0;
#10;
in1=0;
in2=1;
#10;
in1=1;
in2=0;
#10;
in1=1;
in2=1;
#10;
$display("Experiment 2 TEST done");

end
endmodule
