`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 12:10:22 PM
// Design Name: 
// Module Name: Carry_Select_Adder
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


module Carry_Select_Adder(A,B,Cin,Sum,Cout);
input [7:0]A,B;
input Cin;
output [7:0]Sum;
output Cout;

wire Cout1,Cout2;
wire [7:0]Sum1,Sum2;

Ripple_Carry_Adder Radder1(A,B,0,Sum1,Cout1);
Ripple_Carry_Adder Radder2(A,B,1,Sum2,Cout2);
MUX_2_1_8bit sel_sum(Sum1,Sum2,Cin,Sum);
Gate_Level_MUX sel_cout(Cout1,Cout2,Cin,Cout);


endmodule
