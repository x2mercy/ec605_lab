`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2017 04:00:59 PM
// Design Name: 
// Module Name: Clock_Divider
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


//module Lab1_clk_gen(
//    input clk,
//    input rst,
//    output clk_0
//    );
    
//    clk_divider #(.MAX_COUNT(100000000)) clk0(.clk(clk), .rst(rst), .clk_out(clk_0));
    
//endmodule

module clk_divider(
    input clk,
    input rst,
    output reg clk_out=0
    );
    parameter MAX_COUNT = 50000000;
    integer count;
    
    always @ (posedge clk or negedge rst)
    begin
        if (rst==1)
        begin
            count = 0;
            clk_out = 0;
        end
        else
        begin
            count = count + 1;
            if (count >= MAX_COUNT)
            begin
                count = 0;
                clk_out <= ~clk_out;
            end
        end
    end
endmodule