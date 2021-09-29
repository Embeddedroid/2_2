`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/29 16:18:59
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(none, y, a);
    
//port declarations
    output wire [1:0] y;
    output wire none;
    input wire [3:0] a;
    
    
//Gates instantiations
   assign y[0] = ((~a[2]) & a[1]) | a[3];
   assign y[1] = a[3] | a[2];
   assign none = ~((y[1]| a[1]) | a[0]);
endmodule
