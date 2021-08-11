`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2020 22:22:29
// Design Name: 
// Module Name: dec_2_4_tb
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


module dec_2_4_tb();
reg en;
reg [1:0] Din;
wire [3:0] Dout;

dec_2_4 uut(.en(en),.Din(Din),.Dout(Dout));

initial 
    begin
    Din=0;en=0;
        #10 Din=2'b00; en=1'b0;
        #10 Din=2'b00; en=1'b1;
        #10 Din=2'b01; en=1'b0;
        #10 Din=2'b01; en=1'b1;
        #10 Din=2'b10; en=1'b0; 
        #10 Din=2'b10; en=1'b1;
        #10 Din=2'b11; en=1'b0;
        #10 Din=2'b11;en=1'b1;
        #10 $stop;
    end
endmodule
