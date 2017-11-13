`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2017 03:13:57 PM
// Design Name: 
// Module Name: Sign_extend
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


//module Sign_extend(instruction,ext);
//input [31:0] instruction;
//output reg [63:0] ext;
//always@(instruction)
//    begin
//    ext = {48'h000000000000,instruction[20:5]};
//      if(instruction[31:21]==11'h0A0)
//         begin
//            if(instruction[20]==0)
//                ext = {3'b000,40'h0000000000,instruction[20:0]};
//            else
//                ext = {3'b111,40'h1111111111,instruction[20:0]};  
//         end
////      if(instruction[31:21]==11'h450)

////                   ext = {48'h000000000000,instruction[20:5]};

////      if(instruction[31:21]==11'h458)

////                      ext = {48'h111111111111,instruction[20:5]};   

////      if(instruction[31:21]==11'h550)

////                         ext = {48'h000000000000,instruction[20:5]};

//      if(instruction[31:21]==11'h5A8)
//                  begin
//                     if(instruction[20]==0)
//                         ext = {48'h000000000000,instruction[20:5]};
//                     else
//                         ext = {48'h111111111111,instruction[20:5]};   
//                  end
////      if(instruction[31:21]==11'h658)

////                         ext = {48'h000000000000,instruction[20:5]};

//      if(instruction[31:21]==11'h794)
//                  begin
//                     if(instruction[20]==0)
//                         ext = {48'h000000000000,instruction[20:5]};
//                     else
//                         ext = {48'h111111111111,instruction[20:5]};   
//                  end
//      if(instruction[31:21]==11'h7C0)
//                  begin
//                     if(instruction[20]==0)
//                         ext = {1'b0,52'h0000000000000,instruction[20:10]};
//                     else
//                         ext = {1'b1,52'h1111111111111,instruction[20:10]};   
//                  end
//      if(instruction[31:21]==11'h7C2)
//                  begin
//                     if(instruction[20]==0)
//                         ext = {1'b0,52'h0000000000000,instruction[20:10]};
//                     else
//                         ext = {1'b1,52'h1111111111111,instruction[20:10]};   
//                  end
//    end
//endmodule

module Sign_extend(instruction,ext);
input [31:0] instruction;
output reg [63:0] ext;
always @(*)
begin
     case(instruction[31:21])
         11'h0A0:  ext <= {{43{instruction[20]}},instruction[20:0]};
         11'h5A8:  ext <= {{48{instruction[20]}},instruction[20:5]};
         11'h794:  ext <= {{48{instruction[20]}},instruction[20:5]};
         11'h7C0,
         11'h7C2:  ext <= {{53{instruction[20]}},instruction[20:10]};
         default: ext<='bX;
      endcase
end
endmodule
