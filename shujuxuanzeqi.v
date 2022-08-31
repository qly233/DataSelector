`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:10 11/17/2021 
// Design Name: 
// Module Name:    shujuxuanzeqi 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module shujuxuanzeqi(A,B,C,D,EN,S,Y);
	input[1:0] A,B,C,D,S;
	wire[1:0] A,B,C,D,S;
	input EN;
	wire EN;
	output[1:0] Y;
	wire[1:0] Y;
	assign Y[0]= (~EN)&(((~S[1])&(~S[0])&A[0])|((~S[1])&S[0]&B[0])|(S[1]&(~S[0])&C[0])|(S[1]&S[0]&D[0]));
	assign Y[1]= (~EN)&(((~S[1])&(~S[0])&A[1])|((~S[1])&S[0]&B[1])|(S[1]&(~S[0])&C[1])|(S[1]&S[0]&D[1]));
endmodule
