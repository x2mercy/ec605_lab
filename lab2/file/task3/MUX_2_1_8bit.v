`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 03:48:35 PM
// Design Name: 
// Module Name: MUX_2_1_8bit
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


module MUX_2_1_8bit(A,B,sel,Y);
input [7:0]A,B;
input sel;
output [7:0]Y;

Gate_Level_MUX bit1(A[0],B[0],sel,Y[0]);
Gate_Level_MUX bit2(A[1],B[1],sel,Y[1]);
Gate_Level_MUX bit3(A[2],B[2],sel,Y[2]);
Gate_Level_MUX bit4(A[3],B[3],sel,Y[3]);
Gate_Level_MUX bit5(A[4],B[4],sel,Y[4]);
Gate_Level_MUX bit6(A[5],B[5],sel,Y[5]);
Gate_Level_MUX bit7(A[6],B[6],sel,Y[6]);
Gate_Level_MUX bit8(A[7],B[7],sel,Y[7]);
endmodule
