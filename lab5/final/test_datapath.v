`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2017 09:51:03 AM
// Design Name: 
// Module Name: test_datapath
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


module test_datapath();
reg clk;
reg rst;
wire [11:0] Control;
wire [63:0] ReadData_data,ReadData1_reg,ReadData2_reg;
wire [31:0] ReadData_ins;
wire [63:0] pc;
wire [63:0] ALUSrc_Y;
wire [4:0] Reg2Loc_Y;
wire [63:0] ext_out;
wire [63:0] ALU_OUT,memtoReg_Y,movk_Y;
wire ALU_Z_FLAG,branch_out,uncondbranch_out,cbnz_zero;
data_path DataPath(clk,rst,Control,ReadData_data,pc,ReadData1_reg,ReadData2_reg,ReadData_ins,ALUSrc_Y,Reg2Loc_Y,ext_out,ALU_OUT,ALU_Z_FLAG,branch_out,uncondbranch_out,cbnz_zero,memtoReg_Y,movk_Y);
always #1 clk = ~clk;

initial
begin
rst = 1;clk=0;
#1 clk = ~clk;
#1 rst = 0;
//#1 rst = 0;clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
//#1 clk=~clk;
#50
$finish;
end


endmodule
