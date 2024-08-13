`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2024 21:45:17
// Design Name: 
// Module Name: simple_calci_tb
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

module simple_calci_tb();
    reg a1, a0, b1, b0;
    reg s0, s1;
    wire y0, y1, y2, y3;
    wire yrep;

simple_calci sc(a1, a0, b1, b0, y3, y2, y1, y0, s0, s1, yrep);

    initial
        begin
            s0=1'b0; s1=1'b0; a1=1; a0=0; b1=0; b0=1; #5;
            a1=1; a0=1; b1=1; b0=1; #5;
            s0=1'b1; s1=1'b0; a1=1; a0=0; b1=0; b0=1; #5;
            a1=0; a0=0; b1=1; b0=1; #5;
            s0=1'b0; s1=1'b1; a1=1; a0=1; b1=1; b0=1; #5;
            a1=1; a0=0; b1=0; b0=0; #5;
            s0=1'b1; s1=1'b1; a1=0; a0=1; b1=1; b0=1; #5;
            a1=1; a0=0; b1=1; b0=0; #5;
            a1=1'bx; a0=1'bx; b1=0; b0=0; #5;
            $finish;
        end

endmodule

