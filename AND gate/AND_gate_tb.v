`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2020 11:23:47
// Design Name: 
// Module Name: AND_gate_tb
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


module AND_gate_tb;
    reg a,b;
    wire c;
    
    AND_gate uut(a,b,c);
    initial 
    begin
    $monitor("%t a=%b b=%b c=%b",$time,a,b,c);
    
    a=0;
    b=0;
    #10;
    
    a=0;
    b=1;
    #10
    
    a=1;
    b=0;
    #10;
    
    a=1;
    b=1;
    #10;
    
    $display("TEST DONE");
    end
endmodule
