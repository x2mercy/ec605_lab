`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 04:23:47 PM
// Design Name: 
// Module Name: ALU
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


module ALU(A,B,OPCODE,rst,Y,N,Z,C,V);
input signed [3:0]A,B;
input [3:0]OPCODE;
input rst;
output reg signed [3:0]Y;
output reg N,Z,V;
output reg C;
//output [6:0]Seven_seg;
wire Cout3;
wire w1;

Ripple_Carry_Adder4bit Radder(A,B,1'b0,Cout3,w1);
//display screen(Y,Seven_seg);

always @(A or B or OPCODE or rst)  
begin
     if (rst==0)      
     begin
     V=0;
     C=0;
          case (OPCODE)
              4'd1:Y = A & B; 
              4'd2:Y = A | B;
              4'd3:Y = ~A;
              4'd4:Y = A ^ B;
              4'd5: Y = A<<B;
              4'd6: Y = A>>>B;
              4'd7: Y = A>>B;
              4'd8:  
              begin
              Y = A + B;
              C=w1;
              if (Cout3==C)
                  V = 0;
              else
                  V = 1;
              end
              4'd9: Y = A - B;
              endcase
          if (Y[3]==1)
              N=1'b1;
              else
              N=1'b0;
          if (Y==4'b0)
              Z=1'b1;
              else
              Z=1'b0;
     end
     else
      begin
         Y=0;
         C=0;
         N=0;
         Z=0;
         V=0;
      end
end
       
         
//      if (Cout3==C)
//          V = 0;
//      else
//          V = 1;
      
//      case (Y)
//      4'd0: Seven_seg = ~7'b1111110;
//      4'd1: Seven_seg = ~7'b0110000;
//      4'd2: Seven_seg = ~7'b1101101;
//      4'd3: Seven_seg = ~7'b1111001;
//      4'd4: Seven_seg = ~7'b0110011;
//      4'd5: Seven_seg = ~7'b1011011;
//      4'd6: Seven_seg = ~7'b1011111;
//      4'd7: Seven_seg = ~7'b1110000;
//      4'd8: Seven_seg = ~7'b1111111;
      
//      4'd9: Seven_seg = ~7'b1111011;
//      4'd10: Seven_seg = ~7'b1110111;
//      4'd11: Seven_seg = ~7'b0011111;
//      4'd12: Seven_seg = ~7'b1001110;
//      4'd13: Seven_seg = ~7'b0111101;
//      4'd14: Seven_seg = ~7'b1001111;
//      4'd15: Seven_seg = ~7'b1000111;
//      endcase
endmodule
