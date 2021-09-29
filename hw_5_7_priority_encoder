`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/29 16:18:59
// Design Name: 
// Module Name: binary_priority_encoder
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


module binary_priority_encoder(none,y,a);

    output wire none;
    output wire [2:0] y;
    input wire [7:0] a;
    
    wire none_0, none_1;
    wire [1:0] y_0, y_1;
    
    priority_encoder pe0(none_0, y_0[1:0], a[3:0]);
    priority_encoder pe1(none_1, y_1[1:0], a[7:4]);
    
    mux mx1(y[0], y_0[0], y_1[0], none_0);
    
    mux mx2(y[1], y_0[1], y_1[1], none_0);
    
    assign y[2] = none_0 & (~none_1);
    
    assign none = none_0 & none_1;
    
endmodule
