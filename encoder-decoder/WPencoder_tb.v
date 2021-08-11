`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 22:37:55
// Design Name: 
// Module Name: WPencoder_tb
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


module WPencode_tb();
reg en;
reg [7:0] Din;
wire [2:0] Dout;

WPencode uut(.en(en),.Din(Din),.Dout(Dout));

initial 
    begin
        #10 Din=8'b00000001; en=1'b0;
        #10 Din=8'b00000001; en=1'b1;
        #10 Din=8'b00000010; en=1'b0;
        #10 Din=8'b00000010; en=1'b1;
        #10 Din=8'b00000100; en=1'b0;
        #10 Din=8'b00000100; en=1'b1;
        #10 Din=8'b00001000; en=1'b0;
        #10 Din=8'b00001000; en=1'b1;
        #10 Din=8'b00010000; en=1'b0;
        #10 Din=8'b00010000; en=1'b1;
        #10 Din=8'b00100000; en=1'b0;
        #10 Din=8'b00100000; en=1'b1;
        #10 Din=8'b01000000; en=1'b0;
        #10 Din=8'b01000000; en=1'b1;
        #10 Din=8'b10000000; en=1'b0;
        #10 Din=8'b10000000; en=1'b1;
        #10 $stop;
    end
endmodule
