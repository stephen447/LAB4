`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2022 14:32:31
// Design Name: 
// Module Name: main
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


module main( input [15:0] number,
input clk,
input reset,
output [6:0] LED_out,
output [3:0] Anode_Activate
    );
    
  reg reset_button = 0;
  wire debounced_reset;
    debouncer reset_debouncer( .clk(clk), .reset(reset), .button(reset), .button_db(debounced_reset));
    seven_seg_ctrl top_mod( .clk(clk), .reset(debounced_reset), .number(number), .LED_out(LED_out), .Anode_Activate(Anode_Activate));
endmodule
