`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 22:47:55
// Design Name: 
// Module Name: fulladder
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


module fulladder(
input a , b, cin   ,
output sum , cout 
    );
    wire s1 , c1, c2;
    halfadder H1(a  , b , s1 , c1 );
    halfadder H2(s1 , cin , sum , c2);
    or  g1(cout , c2 , c1);
endmodule
