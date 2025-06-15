`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    15:43:27 07/22/24
// Design Name:    
// Module Name:    mux2_1
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module mux2_1(o, a,b,s);
    output [7:0] o;
    input [7:0] a,b;
	 input s;

	assign o = s?b:a;


endmodule
