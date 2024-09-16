`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2024 18:12:58
// Design Name: 
// Module Name: top
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


`timescale 1ns / 1ps

module top(
    input clk_100MHz,
    input reset,
    output [3:0] count
    );
    
    wire w_1Hz;
    
    johnson_counter jc(
        .clk(w_1Hz),
        .reset(reset),
        .count(count)
        );
        
    oneHz_gen oh(
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .clk_1Hz(w_1Hz)
        );
    
    
endmodule
