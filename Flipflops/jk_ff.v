`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 10:17:32
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,k,clk,output q);
    reg q;
    always@(posedge clk)
    case ({j,k})
    2'b00:q<=q;
    2'b01:q<=1;
    2'b10:q<=0;
    2'b11:q<=~q;
    endcase
endmodule
