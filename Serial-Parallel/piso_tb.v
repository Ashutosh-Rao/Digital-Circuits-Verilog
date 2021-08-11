`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:50:59
// Design Name: 
// Module Name: piso_tb
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


module piso_tb;
reg [3:0] din;
reg clk,reset,load;
wire dout;
piso uut(din,clk,reset,load,dout);

initial 
begin
reset=0;
load=0;
clk=0;
din=4'b0000;
#20 reset=1;
#20 reset=0;
#20 load =1;
#20 load =0;

#60 din=4'b1001;
#60 din=4'b1010;
#60 din=4'b1111;
#60 $finish;

end
always #10 clk=~clk;
endmodule

