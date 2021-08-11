`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:01:58
// Design Name: 
// Module Name: WPencode
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


module WPencode(en,Din,Dout);
    input en;
    input [7:0] Din;
    output [2:0] Dout;
    reg [2:0] Dout;
    always@(en,Din)
    begin
    if(en==1)
    begin
    Dout=3'bZZZ;
    end
    else begin
    case(Din)
    8'b00000001:Dout = 3'b000;
    8'b00000010:Dout = 3'b001;
    8'b00000100:Dout = 3'b010;
    8'b00001000:Dout = 3'b011;
    8'b00010000:Dout = 3'b100;
    8'b00100000:Dout = 3'b101;
    8'b01000000:Dout = 3'b110;
    8'b10000000:Dout = 3'b111;
endcase
end end
endmodule
