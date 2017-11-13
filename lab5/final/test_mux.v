`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2017 01:30:04 PM
// Design Name: 
// Module Name: test_mux
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


module test_mux();
reg S;
reg [63:0] A,B;
wire [63:0] Y;
mux_2_1 mul(S,A,B,Y);
initial
begin
S=0;A=64'h0000_0000_ffff_ffff;
B=64'h0000_0000_AAAA_AAAA;
#5 S=1;
#5 S=0;
$finish;
end
endmodule
