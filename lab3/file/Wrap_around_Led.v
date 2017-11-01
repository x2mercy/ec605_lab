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

module Wrap_around_Led(in_clk,rst,switch0,switch1,max,led);
input in_clk,rst,switch0,switch1;
wire [7:0] counter;
//output [7:0] counter;
output reg [3:0]led;
//output clk_out;
input [7:0]max;
//reg temp=1'b0;
clk_divider divider0(in_clk,rst,clk_out);
Counter_8bit count(clk_out,rst,1,max,counter);


//always@(clk_out)
//begin
//if(max==8'd1)
//temp=~temp;
//else temp=temp;
//end


always@(posedge (counter==8'd0)  or negedge rst)
begin 
     if(rst==1) begin led=4'd0;end
     else

     case(led)
     4'b0: 
     begin
          if((switch0==1&&switch1==1)||(switch0==0&&switch1==0))
          led = 4'b0;
          else 
             begin if(switch1==1)
             led = 4'b1000;
             else led = 4'b0001;
             end
     end
     
     4'b0001:
     begin
          if((switch0==1&&switch1==1)||(switch0==0&&switch1==0))
          led = 4'b0001;
          else 
             begin if(switch1==1)
             led = 4'b0000;
             else led = 4'b0010;
             end
     end
     
     4'b1000:
     begin
          if((switch0==1&&switch1==1)||(switch0==0&&switch1==0))
          led = 4'b1000;
          else 
             begin if(switch1==1)
             led = 4'b0100;
             else led = 4'b0000;
             end
     end
     
     4'b0010:
     begin
     if((switch0==1&&switch1==1)||(switch0==0&&switch1==0))
     led = 4'b0010;
     else 
        begin if(switch1==1)
        led = 4'b0001;
        else led = 4'b0100;
        end
     end
     
     4'b0100:
     begin
     if((switch0==1&&switch1==1)||(switch0==0&&switch1==0))
     led = 4'b0100;
     else 
        begin if(switch1==1)
        led = 4'b0010;
        else led = 4'b1000;
        end
     end
     
     endcase
end
     
          
endmodule