`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 22:50:11
// Design Name: 
// Module Name: priori_tb
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


module priori_tb();
reg en;
reg [7:0] Din;
wire [2:0] Dout;

priori uut(.en(en),.Din(Din),.Dout(Dout));

initial 
    begin
    
#10 Din=8'b00000001; en=1'b0;
#10 Din=8'b00000001; en=1'b1;
#10 Din=8'b0000001X; en=1'b0;
#10 Din=8'b0000001X; en=1'b1;
#10 Din=8'b000001XX; en=1'b0;
#10 Din=8'b000001XX; en=1'b1;
#10 Din=8'b00001XXX; en=1'b0;
#10 Din=8'b00001XXX; en=1'b1;
#10 Din=8'b0001XXXX; en=1'b0;
#10 Din=8'b0001XXXX; en=1'b1;
#10 Din=8'b001XXXXX; en=1'b0;
#10 Din=8'b001XXXXX; en=1'b1;
#10 Din=8'b01XXXXXX; en=1'b0;
#10 Din=8'b01XXXXXX; en=1'b1;
#10 Din=8'b1XXXXXXX; en=1'b0;
#10 Din=8'b1XXXXXXX; en=1'b1;
#10 $stop;
end
endmodule
