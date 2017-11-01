`timescale 1ns / 1ps

module Top_module(clk,seven_enable,A,B,OPCODE,rst,seven_seg,N,Z,C,V);
input clk, rst;					// Needed for syncronous inputs
input [3:0]A,B,OPCODE;			// Input switches
//input [1:0] btn;				// Buttons used to save switches to registers
output N,Z,V,C;				// Display N, V, C, Z
output [6:0] seven_seg;		// Display outputs to seven segment
output reg [3:0] seven_enable= 4'b1110;	// Select which seven segment to display

wire [3:0] Y;
//reg [3:0] SEL;

/********* ADD MODULE DECLARATIONS HERE ************/
ALU alu(A,B,OPCODE,rst,Y,N,Z,C,V);
seven_segment_display seven(Y, seven_seg);
//seven_enable= 4'b1110;
/********* END MODULE DECLARATIONS HERE ************/

/**************** INPUT REGISTERS ******************/
/* This always block saves switch inputs into      */
/* registers when buttons are pressed.             */
//always @ (posedge clk or posedge rst)
//begin
//    if (rst)
//    begin
//        A <= 0;
//        B <= 0;
//        SEL <= 0;
//    end
//    else
//    begin
//        if (btn[0])
//            {A, B} <= switches;
//        if (btn[1])
//            SEL <= switches[3:0];
//    end
//end
/********* End always block **********/
endmodule
/************ End module *************/

/************ EXAMPLE BCD MODULE HEADER *************/
/* This function would be used to convert a binary  */
/* number into a decimal number split into 3 digits */
//module bcd_converter(binary, ones, tens, hundreds);
//input [7:0] binary;
//output [3:0] ones, tens, hundreds;

//endmodule
/************ End module *************/

/********* EXAMPLE SEVEN SEGMENT DISPLAY MODULE **********/
/* This function would be used to convert a decimal digit*/
/* into a proper seven segment display value. Refer to   */
/* reference manual for seven segment led configuration  */
module seven_segment_display(Y, seven_seg);
input [3:0] Y;
output reg [6:0] seven_seg;

parameter zero = 7'b100_0000;
parameter one = 7'b111_1001;
parameter two = 7'b010_0100;
parameter three = 7'b011_0000;
parameter four = 7'b001_1001;
parameter five = 7'b001_0010;
parameter six = 7'b000_0010;
parameter seven = 7'b111_1000;
parameter eight = 7'b000_0000;
parameter nine = 7'b001_0000;
parameter ten = 7'b000_1000;
parameter eleven = 7'b000_0011;
parameter twelve = 7'b100_0110;
parameter thirteen = 7'b010_0001;
parameter fourteen = 7'b000_0110;
parameter fifteen = 7'b000_1110;
always @(Y)
    case(Y)
        0:seven_seg = zero;
        1:seven_seg = one;
        2:seven_seg = two;
        3:seven_seg = three;
        4:seven_seg = four;
        5:seven_seg = five;
        6:seven_seg = six;
        7:seven_seg = seven;
        8:seven_seg = eight;
        9:seven_seg = nine;
        10:seven_seg = ten;
        11:seven_seg = eleven;
        12:seven_seg = twelve;
        13:seven_seg = thirteen;
        14:seven_seg = fourteen;
        15:seven_seg = fifteen;
        default: seven_seg = zero;
    endcase
endmodule
/************ End module *************/
