`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2020 12:08:39
// Design Name: 
// Module Name: full_adder_structural_design
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


module full_adder_structural_design(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
   wire a1,a2,a3;
   xor u1(a1,a,b);
   and u2(a2,a,b);
   and u3(a3,a1,cin);
   or u4(cout,a2,a3);
   xor u5(s,a1,cin);
endmodule
