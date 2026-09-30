`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2026 21:47:00
// Design Name: 
// Module Name: bitsadder
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


module bitsadder(
    input  [8:0] a,
    input  [8:0] b,
    output [9:0] s
);

    wire [9:0] c;

    assign c[0] = 1'b0;

    genvar i;

    generate
        for (i = 0; i < 32; i = i + 1)
        begin
            fulladder FA(a[i], b[i] ,c[i] ,s[i] , c[i+1]);
                

        end
    endgenerate

    assign s[9] = c[9];

endmodule