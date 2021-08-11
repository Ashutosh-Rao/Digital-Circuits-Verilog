`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:14:47
// Design Name: 
// Module Name: dlatch_tb
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


module dlatch_tb;
reg e,d;
wire q;
dlatch uut (.e(e), .d(d), .q(q));
initial 
begin
d=0; e=0;
#5 d=1;
#10 e=1;
#10 d=1;
#20 d=0;
#10 e=1;
end
endmodule
