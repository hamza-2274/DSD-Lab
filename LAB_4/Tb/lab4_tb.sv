`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2024 10:13:05 AM
// Design Name: 
// Module Name: lab4_tb
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



module lab4_tb;
    reg [1:0] a, b;
    wire R, G, B;
    lab4 uut (
        .a(a[1]),
        .a0(a[0]),
        .b(b[1]),
        .b0(b[0]),
        .R(R),
        .G(G),
        .B(B)
    );
    initial begin
        // Test case 1
        a = 2'b00; b = 2'b00; #10;
        // Test case 2
        a = 2'b00; b = 2'b01; #10;
        // Test case 3
        a = 2'b00; b = 2'b10; #10;
        // Test case 4
        a = 2'b00; b = 2'b11; #10;
        // Test case 5
        a = 2'b01; b = 2'b00; #10;
        // Test case 6
        a = 2'b01; b = 2'b01; #10;
        // Test case 7
        a = 2'b01; b = 2'b10; #10;
        // Test case 8
        a = 2'b01; b = 2'b11; #10;
        // Test case 9
        a = 2'b10; b = 2'b00; #10;
        // Test case 10
        a = 2'b10; b = 2'b01; #10;
        // Test case 11
        a = 2'b10; b = 2'b10; #10;
        // Test case 12
        a = 2'b10; b = 2'b11; #10;
        // Test case 13
        a = 2'b11; b = 2'b00; #10;
        // Test case 14
        a = 2'b11; b = 2'b01; #10;
        // Test case 15
        a = 2'b11; b = 2'b10; #10;
        // Test case 16
        a = 2'b11; b = 2'b11; #10;
        $display("All test cases completed.\n");
        $finish;
    end
    initial begin
        #100;
        $display("Input: a = %b%b, b = %b%b, Output: R = %b, G = %b, B = %b", a[1], a[0], b[1], b[0], R, G, B);
    end
endmodule

