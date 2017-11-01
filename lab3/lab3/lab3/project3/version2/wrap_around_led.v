`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2017 04:52:11 PM
// Design Name: 
// Module Name: Wrap_aroundLed
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

module Wrap_around_Led(in_clk,rst,switch0,switch1,max,clk_out,led);
input in_clk,rst,switch0,switch1;
wire [7:0] counter;
//output [7:0] counter;
output reg [3:0]led;
output clk_out;
reg [1:0] state=2'b00;
input [7:0] max;

clk_divider divider0(in_clk,rst,clk_out);
Counter_8bit count(clk_out,rst,0,max,counter);

always@(posedge (counter==8'd0) or negedge rst )
begin 
     if(rst==1) 
         begin state=2'b00;led=4'b0000; end
     else
         case(state)
         2'b10:
         begin
               case(led)
               4'b0000: led<=4'b0001;
               4'b0001: led<=4'b0010;
               4'b0010: led<=4'b0100;
               4'b0100: led<=4'b1000;
               4'b1000: begin led<=4'b0000; state<=2'b00;end
               endcase
         end
         2'b01:
         begin
               case(led)
               4'b0000: led<=4'b1000;
               4'b1000: led<=4'b0100;
               4'b0100: led<=4'b0010;
               4'b0010: led<=4'b0001;
               4'b0001: begin led<=4'b0000; state<=2'b00;end
               endcase 
         end
         default:
               begin
               led=4'b0000;
               state[0]=switch0;
               state[1]=switch1;
               end
         endcase
      
end
     
          
endmodule
