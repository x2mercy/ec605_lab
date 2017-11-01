`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 11:12:05 AM
// Design Name: 
// Module Name: Ripple_Carry_Adder
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


module Ripple_Carry_Adder4bit(A,B,Cin,Cout3,Cout4);
input [3:0]A,B;
input Cin;
output Cout3,Cout4;

wire [3:0]Sum;
wire Cout1,Cout2;

Full_adder adder1(A[0],B[0],Cin,Cout1,Sum[0]);
Full_adder adder2(A[1],B[1],Cout1,Cout2,Sum[1]);
Full_adder adder3(A[2],B[2],Cout2,Cout3,Sum[2]);
Full_adder adder4(A[3],B[3],Cout3,Cout4,Sum[3]);

endmodule
