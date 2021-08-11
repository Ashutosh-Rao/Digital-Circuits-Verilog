`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2020 12:29:13
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_behavioural_design_tb( );
    reg a,b,cin;
    wire s,cout;
    
    full_adder_structural_design uut(a,b,cin,s,cout);
    initial begin
    
    a=0;
    b=0;
    cin=0;
    #5;
    
    a=0;
    b=0;
    cin=1;
    #5;
    
    a=0;
    b=1;
    cin=0;
    #5;
    
    a=0;
    b=1;
    cin=1;
    #5;
    
    a=1;
    b=0;
    cin=0;
    #5;
   
    a=1;
    b=0;
    cin=1;
    #5;
    
    a=1;
    b=1;
    cin=0;
    #5;
    
    a=1;
    b=1;
    cin=1;
    #5;
    end
endmodule
