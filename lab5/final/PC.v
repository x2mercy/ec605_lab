`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2017 05:35:46 PM
// Design Name: 
// Module Name: PC
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


module PC(clk,rst,selection,offset,pc);
input selection;
input signed [63:0]offset;
output reg signed [63:0]pc;
input clk,rst;

always@(posedge clk)
begin
if(rst)
pc = 0;
   if (selection==0)
   pc=pc+1;
   if (selection==1)
   pc=pc+offset;
end



endmodule
