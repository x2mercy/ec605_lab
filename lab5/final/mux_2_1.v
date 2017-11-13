`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2017 01:27:51 PM
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(S,A,B,Y,clk);
input S,clk;
input [63:0] A,B;
output reg [63:0] Y;
always@(S or A or B)
begin
if(S==0)
Y=A;
else Y=B;
end
endmodule
