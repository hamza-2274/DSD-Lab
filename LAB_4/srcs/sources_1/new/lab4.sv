`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2024 10:05:46 AM
// Design Name: 
// Module Name: lab4
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


module lab4(input a,a0,b,b0, output R,G,B);
assign R=  (~a&b)|(~a&b0)|(~a0&b)|(b&b0)|(~a&~a0)|(~a0&~a);
assign G = (~a0&b0)|(a0&~b0)|(~a&b)|(a&~b);
assign B= (a0&~b)|(a&a0)|(a&~b0)|(~b&~b0)|(a&~b);
endmodule
