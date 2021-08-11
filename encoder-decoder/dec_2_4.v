`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 09:58:29
// Design Name: 
// Module Name: dec_2_4
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


module dec_2_4(en,Din,Dout);
    input en;
    input [1:0] Din;
    output [3:0] Dout;
    reg [3:0] Dout;
    always@(en,Din)
    begin
    if(en==1)
    begin
    Dout=4'b0000;
    end
    
    else begin
    case(Din)
    2'b00: Dout = 4'b0001;
    2'b01: Dout = 4'b0010;
    2'b10: Dout = 4'b0100;
    2'b11: Dout = 4'b1000;
    endcase
    end end
endmodule
