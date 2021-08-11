`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:20:30
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb;
reg j,k,clk;
wire q;
initial clk=0;
always #5 clk=~clk;
jk_ff jk0(.j(j),.k(k),.clk(clk),.q(q));
initial begin
j<=0;
k<=0;

#5 j<=0;
   k<=1;   
#20 j<=1;
   k<=0;   
#20 j<=1;
    k<=1;
#20 $finish;
end
initial
$monitor ("j=%0d k=%0d q=%0d", j,k,q);           
endmodule
