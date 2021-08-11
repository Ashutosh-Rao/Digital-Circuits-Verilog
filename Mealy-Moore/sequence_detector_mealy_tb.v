`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:30:15
// Design Name: 
// Module Name: sequence_detector_mealy_tb
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


module sequence_detector_mealy_tb;
reg rst,clk,in_seq;
wire out_detect;
sequence_detector_mealy uut(.rst(rst), .clk(clk), .in_seq(in_seq), .out_detect(out_detect));
always #5 clk=~clk;
initial begin
$monitor($time, "rst=%b in_seq=%b out=%b",rst,in_seq,out_detect);
rst=1;
clk=0;
in_seq=0;
#4 rst=0;
#10 in_seq=1;
#10 in_seq=0;
#10 in_seq=1;
#10 in_seq=0;
#10 in_seq=1;
#10 in_seq=0;
#10 in_seq=1;
#10 in_seq=0;
#10 $finish;
end
endmodule
