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


module Ripple_Carry_Adder(A,B,Cin,Sum,Cout);
input [7:0]A,B;
input Cin;
output [7:0]Sum;
output Cout;

wire [6:0]w;
Full_adder adder1(A[0],B[0],Cin,w[0],Sum[0]);
Full_adder adder2(A[1],B[1],w[0],w[1],Sum[1]);
Full_adder adder3(A[2],B[2],w[1],w[2],Sum[2]);
Full_adder adder4(A[3],B[3],w[2],w[3],Sum[3]);
Full_adder adder5(A[4],B[4],w[3],w[4],Sum[4]);
Full_adder adder6(A[5],B[5],w[4],w[5],Sum[5]);
Full_adder adder7(A[6],B[6],w[5],w[6],Sum[6]);
Full_adder adder8(A[7],B[7],w[6],Cout,Sum[7]);

endmodule
