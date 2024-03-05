`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 01:50:14 AM
// Design Name: 
// Module Name: lab4_b
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


module lab4_b( a,b,c,d ,x,y,z,A,B,C,D,E,F,G,s1,s2,s3,s4,s5,s6,s7,s8,DP );
input  a,b,c,d ,x,y,z ;
output  A,B,C,D,E,F,G,s1,s2,s3,s4,s5,s6,s7,s8,DP;
assign DP = 0 ; //always on 
assign A=(~a&~b&~c&d)|(~a&b&~c&~d)|(a&b&~c&d)|(a&~b&c&d);
assign B =(a|b)&(b|c)&(~a|b|d)&(a|~c|~d)&(~a|c|~d)&(a|c|d);
assign C = (c|~d)&(a|~b) & (~a|b)&(a|c) & (a|~d);
assign D = (~a|c) & (b|c|d) & (~a|b|~d) & (~b|c|~d)&(~b|~c|d)&(a|b|~c);
assign E = (~c|d) & (~a|~b) & (~a|~c) & (~a|d) & (b|c|d);
assign F= (~a|b)&(c|d) & (~a|~c) & (a|~b|c) & (~b|d);
assign G =(~c|d) & (~a|b) & (~a|~d) & (b|~c)&(a|~b|c);
assign s1 =(x|y|z);
assign s2 =(x|y|~z);
assign s3 =(x|~y|z);
assign s4 = (x|~y|~z);
assign s5 = (~x|y|z);
assign s6 = (~x|y|~z);
assign s7 = (~x|~y|z);
assign s8 = (~x|~y|~z);
endmodule
