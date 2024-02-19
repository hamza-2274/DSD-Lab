`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2024 03:48:37 PM
// Design Name: 
// Module Name: lab3
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


module lab3( output x,y, input a,b,c );
assign x = ((~c) ^(a | b)) ;
assign y = (a|b) & ((~(a&b)) ^ (a|b)) ;
endmodule
