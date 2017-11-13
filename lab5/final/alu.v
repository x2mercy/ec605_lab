`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2017 04:09:01 PM
// Design Name: 
// Module Name: alu
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


module alu(A,B,opcode,Y,Z);
   input signed [63:0]A,B;
   input signed [2:0]opcode;
   output reg [63:0]Y;
   output Z;
   
   always @(A or B or opcode)  
   begin
//   Z=0;
             case (opcode)
                 3'd0:Y = {A[63:16],B[15:0]};
                 3'd1:Y = A & B; 
                 3'd2:Y = A ^ B;
                 3'd3: Y = ~A;
                 3'd4: Y <= A;
                 3'd5: Y <= B;
                 3'd6: Y = A + B;
                 3'd7: Y = A - B;
//                 default: Y=1;
             endcase
//             if (Y==64'b0)
//                 Z=1'b1;
//                 else
//                 Z=1'b0;

   end
assign Z = (Y==64'd0); 
   
endmodule
