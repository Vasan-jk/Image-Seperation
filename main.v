`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    15:35:35 07/22/24
// Design Name:    
// Module Name:    main
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
module main(z1,z2,a,b);
	output [7:0] z1,z2;
	input [7:0] a, b;

	wire y1,y2;
	xnor(y1, a, b);
	assign y2 = ^y1;
	mux2_1 m1(z1,a,8'hff,y1);
	assign z2 = b; 
	



endmodule
