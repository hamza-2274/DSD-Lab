`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2024 04:51:00 PM
// Design Name: 
// Module Name: lab3_tb
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


module lab3_tb;

    // Inputs
    reg a, b, c;
    
    // Outputs
    wire x, y;

    // Instantiate the unit under test (UUT)
    lab3 uut (
        .a(a),
        .b(b),
        .c(c),
        .x(x),
        .y(y)
    );

    initial begin
        // Initialize inputs
        a = 0;
        b = 0;
        c = 0;
        #10;
        a = 0;
        b = 0;
        c = 1;
        #10;
        a = 0;
        b = 1;
        c = 0;
        #10;
        a = 0;
        b = 1;
        c = 1;
        #10
        a=1; b=0;c=0 ;
        #10
        a=1;
        b=0;
        c=1;
        #10
        a=1;
        b=1;
        c=0;
        #10
        a=1;
        b=1;
        c=1;
        #10
        // End simulation
        $stop;
    end
  
endmodule
