`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2017 06:25:16 PM
// Design Name: 
// Module Name: data_path
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


module data_path(clk,rst,Control,ReadData_data,pc,ReadData1_reg,ReadData2_reg,ReadData_ins,ALUSrc_Y,Reg2Loc_Y,ext_out,ALU_OUT,ALU_Z_FLAG,branch_out,uncondbranch_out,cbnz_zero,memtoReg_Y,movk_Y);
// input and output
input clk,rst;
//input [31:0] instruction;
output [11:0] Control;
output [63:0] ReadData_data,ReadData1_reg,ReadData2_reg;
output [31:0] ReadData_ins;
output [63:0] pc;
output [63:0] ALU_OUT;
output ALU_Z_FLAG;
output branch_out;
output uncondbranch_out;
output [63:0] ext_out;
output cbnz_zero;
output [4:0] Reg2Loc_Y;
output [63:0] ALUSrc_Y;
output [63:0] memtoReg_Y;
output [63:0] movk_Y;

//module here

//Sign_extend sign_ext(.instruction(ReadData_ins),.ext(ext_out));
PC pc_ins(.clk(clk),.rst(rst),.selection(uncondbranch_out),.offset(ext_out),.pc(pc));

Instruction_Memory ins_mem(.Address(pc), .ReadData1(ReadData_ins));

//Sign_extend sign_ext(.instruction(ReadData_ins),.ext(ext_out));

Control_Logic logic_control(.instruction(ReadData_ins), .Control(Control));

mux_2_1_reg2loc Reg2Loc(.S(Control[11]),.A(ReadData_ins[20:16]),.B(ReadData_ins[4:0]),.Y(Reg2Loc_Y),.clk(clk));


//Sign_extend sign_ext(.instruction(ReadData_ins),.ext(ext_out));



mux_2_1 ALUSrc(.S(Control[2]),.A(ReadData2_reg),.B(ext_out),.Y(ALUSrc_Y),.clk(clk));

Register_File reg_file(.ReadSelect1(ReadData_ins[9:5]), .ReadSelect2(Reg2Loc_Y), .WriteSelect(ReadData_ins[4:0]), .WriteData(memtoReg_Y), .WriteEnable(Control[1]), .ReadData1(ReadData1_reg), .ReadData2(ReadData2_reg), .clk(clk), .rst(rst));
mux_2_1 MovK(.S(Control[0]),.A(ReadData1_reg),.B(ReadData2_reg),.Y(movk_Y),.clk(clk));

alu ALU(.A(movk_Y),.B(ALUSrc_Y),.opcode(Control[6:4]),.Y(ALU_OUT),.Z(ALU_Z_FLAG));
mux_2_1 memtoReg(.S(Control[7]),.A(ALU_OUT),.B(ReadData_data),.Y(memtoReg_Y),.clk(clk));

Data_Memory data_memory(.Address(ALU_OUT), .WriteData(ReadData2_reg), .WriteEnable(Control[3]), .ReadEnable(Control[8]), .ReadData(ReadData_data), .clk(clk), .rst(rst));

Sign_extend sign_ext(.instruction(ReadData_ins),.ext(ext_out));
assign cbnz_zero = ~ALU_Z_FLAG;  //for cbn
assign branch_out = Control[9] & cbnz_zero;
assign uncondbranch_out = branch_out | Control[10];

endmodule
