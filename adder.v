`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 22:24:53
// Design Name: 
// Module Name: adder
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


module adder(
input [3:0]a , [3:0]b ,
output [4:0]s

    );
    wire [4:0]c ;
    fulladder F1(a[0] ,b[0] , c[0] , s[0] , c[1]);
    fulladder F2(a[1] ,b[1] , c[1] , s[1] , c[2]);
    fulladder F3(a[2] ,b[2] , c[2] , s[2] , c[3]);
    fulladder F4(a[3] ,b[3] , c[3] , s[3] , c[4]);
    assign c[0] = 1'b0 ;
    assign s[4] = c[4] ;
endmodule
