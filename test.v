`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:07:10 11/17/2021
// Design Name:   shujuxuanzeqi
// Module Name:   D:/szdl/shujuxuanzheqi/test.v
// Project Name:  shujuxuanzheqi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shujuxuanzeqi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] C;
	reg [1:0] D;
	reg EN;
	reg [1:0] S;

	// Outputs
	wire [1:0] Y;

	// Instantiate the Unit Under Test (UUT)
	shujuxuanzeqi uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.EN(EN), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 2'b00;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 1;
		S = 2'b01;

		// Wait 100 ns for global reset to finish
		#100;
      A = 2'b00;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 0;
		S = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b00;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 0;
		S = 2'b01;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b00;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 0;
		S = 2'b10;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b00;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 0;
		S = 2'b11;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b10;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 1;
		S = 2'b11;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b00;
		B = 2'b00;
		C = 2'b00;
		D = 2'b01;
		EN = 0;
		S = 2'b11;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b11;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 0;
		S = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b11;
		B = 2'b11;
		C = 2'b11;
		D = 2'b11;
		EN = 1;
		S = 2'b10;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2'b00;
		B = 2'b01;
		C = 2'b10;
		D = 2'b11;
		EN = 1;
		S = 2'b11;

		// Wait 100 ns for global reset to finish
		// Add stimulus here

	end
      
endmodule

