`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2021 20:55:05
// Design Name: 
// Module Name: atariTop
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


module atariTop(
    );
 wire clock_8_33mhz = 0;
 wire locked;
 reg clk = 0;
 reg rst;
 wire phi_1;
 wire phi_2;
 
 clk_wiz_0 clk0
 (
  // Clock out ports
   .clk_out1(clk_8_33mhz),
  .reset(rst),
  .locked(locked),
  .clk_in1(clk)
 );
 
 clk_divider clk_phi1  
 (
   .phi0(clk_8_33mhz),
   .rst(rst),
   .phi_1(phi_1),
   .phi_2(phi_2)
    );
    
 

  
 
 
 
always begin 
#5 clk = ~clk;
end  
initial begin 
rst = 1;
#200 
rst = 0;
end
endmodule
