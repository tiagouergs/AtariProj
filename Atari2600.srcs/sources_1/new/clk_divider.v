`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2021 21:18:07
// Design Name: 
// Module Name: clk_divider
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


module clk_divider #(parameter LIMITE = 4,
parameter WIDTH = 2)(
    input phi0,
    input rst,
    output reg phi_1,
    output reg phi_2
    );
   
 reg [WIDTH:0] count ;   
 
    always @(posedge phi0) 
    begin 
        if (rst == 1) begin
            count = 0; 
            phi_1 = 0;
            phi_2 = 0;
            
        end else begin
           count <= (count == LIMITE+1)?0:count + 1'b01;
            if (count >= LIMITE ) 
                phi_1 = 1;   
            else 
                phi_1 = 0;
            if (count > 0 && count <= 2)
                phi_2 = 1;
            else
                phi_2 = 0;
        end
    end
      
endmodule
