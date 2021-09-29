`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/29 19:58:05
// Design Name: 
// Module Name: tb_binary_pe
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


module tb_binary_pe;

// variables to be connected to inputs
reg [7:0] X;
// variables to be connected to outputs
wire [2:0]Y;
wire NON;
// DUT instantiation
binary_priority_encoder bpe8_3(NON, Y, X);
// Simulations
initial
begin
    X = 8'h0;
    #5 X = 8'h1;
    #5 X = 8'h2;
    #5 X = 8'h4;
    #5 X = 8'h8;
    #5 X = 8'h10;
    #5 X = 8'h20;
    #5 X = 8'h40;
    #5 X = 8'h80;
end
endmodule