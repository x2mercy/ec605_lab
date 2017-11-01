`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2017 03:09:54 PM
// Design Name: 
// Module Name: Counter_8bit
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
// /////////////////////////////////////////////////////////////////////////////////


module Counter_8bit(clk,rst,direction,max,counter);
input clk,rst,direction;
input [7:0]max;
output reg [7:0] counter=8'd0;
always@(posedge clk or negedge rst)
begin
     if(rst == 1'b1)
         counter = 8'b0;
     else
          begin 
              if (direction==1)
              begin 
                   if (counter>=max)
                   begin 
                        counter = 8'b0;                        
                   end
                   else counter = counter+1;
                  end
              else 
                  begin if(counter>0)
                  counter = counter-1;
                  else counter = max;
                  end
          end
end
endmodule