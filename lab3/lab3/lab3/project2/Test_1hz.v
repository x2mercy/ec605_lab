`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2017 04:35:00 PM
// Design Name: 
// Module Name: Test_1hz
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


module Test_1hz();
reg clk;
reg rst;
wire clk_0;

clk_divider clk0(clk,rst,clk_0);

initial
begin
rst=1;clk=0;
#10 rst=0;
end
  
always
   begin
      #1 clk=~clk;
   end

endmodule
