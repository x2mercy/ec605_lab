`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2017 05:35:22 PM
// Design Name: 
// Module Name: Test_Wrap
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


module Test_Wrap();
reg in_clk,rst;
wire [3:0]led;
wire [7:0]counter;
wire clk_out;
Wrap_around_Led wrap(in_clk,rst,0,1,8'd2,clk_out,counter,led);
initial
begin
rst=1;in_clk=0;
#10 rst=1;
#10 rst=0;
#10 rst=1;
#10 rst=0;
end

always
#1 in_clk=~in_clk;

endmodule