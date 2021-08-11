`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:50:00
// Design Name: 
// Module Name: sequence_detector_moore_tb
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


module sequence_detector_moore_tb;
reg rst;
reg clk;
reg in_seq;
wire out_detect;
sequence_detector_moore uut(
.rst(rst), .clk(clk), .in_seq(in_seq), .out_detect(out_detect));
always #5 clk= ~clk;
initial
begin
$monitor($time, "rst= %b in_seq=%b out=%b", rst, in_seq,out_detect);
rst=1;
clk=0;
in_seq =0;
#4 rst=0;
#6 in_seq=0;
#10 in_seq=1;
#10 in_seq=0;
#10 in_seq=0;
#10 in_seq=1;
#10 in_seq=0;
#10 in_seq=1;
#10 in_seq=0;
#10 $finish;
end
endmodule
