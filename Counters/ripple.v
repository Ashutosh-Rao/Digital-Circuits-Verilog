`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2020 11:00:02
// Design Name: 
// Module Name: ripple
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

module dff(input d,clk,rstn,output reg q,output qn);
always@(posedge clk or negedge rstn)
if(!rstn)
q<=0;
else
q<=d;
assign qn=~q;
endmodule

module ripple(input clk,rstn,output [3:0] out);

wire q0,q1,q2,q3;
wire qn0,qn1,qn2,qn3;

dff dff0 (.d(qn0), .clk(clk), .rstn(rstn), .q(q0), .qn(qn0));
dff dff1 (.d(qn1), .clk(q0), .rstn(rstn), .q(q1), .qn(qn1));
dff dff2 (.d(qn2), .clk(q1), .rstn(rstn), .q(q2), .qn(qn2));
dff dff3 (.d(qn3), .clk(q2), .rstn(rstn), .q(q3), .qn(qn3));
assign out={q3,q2,q1,q0};
endmodule
