`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 08:45:07
// Design Name: 
// Module Name: comparator_4bit_tb
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


module comparator_4bit_tb();
reg [3:0] a,b;
wire eq,lt,gt;

comparator_4bit DUT (a,b,eq,lt,gt);
initial 
begin

a=4'b1100;
b=4'b1100;
#10;

a=4'b0100;
b=4'b1100;
#10;

a=4'b1111;
b=4'b1100;
#10;

a=4'b0000;
b=4'b0000;
#10;
$stop;
end
endmodule
