`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2017 04:24:26 PM
// Design Name: 
// Module Name: Control_Logic
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


module Control_Logic(instruction, Control);
input [31:0] instruction;
output reg [11:0] Control;


always @(instruction)
    begin
    if(instruction[31:21]==11'h0A0)
        Control = 12'b11000_000_000_0;    
    if(instruction[31:21]==11'h450)
        Control = 12'b00000_001_001_0;    
    if(instruction[31:21]==11'h458)
        Control = 12'b00000_110_001_0;
    if(instruction[31:21]==11'h550)
        Control = 12'b00000_010_001_0; 
    if(instruction[31:21]==11'h5A8)
        Control = 12'b10100_101_000_0;
    if(instruction[31:21]==11'h658)
        Control = 12'b00000_111_001_0;
    if(instruction[31:21]==11'h794)
        Control = 12'b10000_000_011_1;
    if(instruction[31:21]==11'h7C0)
        Control = 12'b10000_110_110_0;
    if(instruction[31:21]==11'h7C2)
        Control = 12'b00011_110_011_0;
    end
endmodule
