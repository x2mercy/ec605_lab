`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2017 03:26:12 PM
// Design Name: 
// Module Name: Test_Counter_8bit
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


module Test_Counter_8bit();
reg clk,rst,direction;
reg [7:0]max;
wire [7:0]counter;

Counter_8bit counter1(clk,rst,direction,max,counter);
initial
begin
   clk = 1; rst=0; direction =1;max=8'd3;
   #1
   #1 clk = ~clk;rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   #1 clk =~clk; rst=0; direction =1;max=8'd3;
   
   #1 clk = ~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 clk =~clk; rst=0; direction =0;max=8'd3;
   #1 rst =1;
   #5
   $finish;
end

endmodule
