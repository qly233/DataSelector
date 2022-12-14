////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: shujuxuanzeqi_synthesis.v
// /___/   /\     Timestamp: Wed Dec 01 11:52:01 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim shujuxuanzeqi.ngc shujuxuanzeqi_synthesis.v 
// Device	: xc7a100t-2L-fgg484
// Input file	: shujuxuanzeqi.ngc
// Output file	: D:\szdl\shujuxuanzheqi\netgen\synthesis\shujuxuanzeqi_synthesis.v
// # of Modules	: 1
// Design Name	: shujuxuanzeqi
// Xilinx        : D:\ise\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module shujuxuanzeqi (
  EN, A, B, C, D, S, Y
);
  input EN;
  input [1 : 0] A;
  input [1 : 0] B;
  input [1 : 0] C;
  input [1 : 0] D;
  input [1 : 0] S;
  output [1 : 0] Y;
  wire A_0_IBUF_0;
  wire A_1_IBUF_1;
  wire B_0_IBUF_2;
  wire B_1_IBUF_3;
  wire C_0_IBUF_4;
  wire C_1_IBUF_5;
  wire D_0_IBUF_6;
  wire D_1_IBUF_7;
  wire S_1_IBUF_8;
  wire S_0_IBUF_9;
  wire EN_IBUF_10;
  wire Y_0_OBUF_11;
  wire Y_1_OBUF_12;
  wire N2;
  wire N4;
  LUT3 #(
    .INIT ( 8'h27 ))
  \Y<0>_SW0  (
    .I0(S_0_IBUF_9),
    .I1(B_0_IBUF_2),
    .I2(A_0_IBUF_0),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h4044400051555111 ))
  \Y<0>  (
    .I0(EN_IBUF_10),
    .I1(S_1_IBUF_8),
    .I2(D_0_IBUF_6),
    .I3(S_0_IBUF_9),
    .I4(C_0_IBUF_4),
    .I5(N2),
    .O(Y_0_OBUF_11)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \Y<1>_SW0  (
    .I0(S_0_IBUF_9),
    .I1(B_1_IBUF_3),
    .I2(A_1_IBUF_1),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h4044400051555111 ))
  \Y<1>  (
    .I0(EN_IBUF_10),
    .I1(S_1_IBUF_8),
    .I2(D_1_IBUF_7),
    .I3(S_0_IBUF_9),
    .I4(C_1_IBUF_5),
    .I5(N4),
    .O(Y_1_OBUF_12)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_1)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_0)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_3)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_2)
  );
  IBUF   C_1_IBUF (
    .I(C[1]),
    .O(C_1_IBUF_5)
  );
  IBUF   C_0_IBUF (
    .I(C[0]),
    .O(C_0_IBUF_4)
  );
  IBUF   D_1_IBUF (
    .I(D[1]),
    .O(D_1_IBUF_7)
  );
  IBUF   D_0_IBUF (
    .I(D[0]),
    .O(D_0_IBUF_6)
  );
  IBUF   S_1_IBUF (
    .I(S[1]),
    .O(S_1_IBUF_8)
  );
  IBUF   S_0_IBUF (
    .I(S[0]),
    .O(S_0_IBUF_9)
  );
  IBUF   EN_IBUF (
    .I(EN),
    .O(EN_IBUF_10)
  );
  OBUF   Y_1_OBUF (
    .I(Y_1_OBUF_12),
    .O(Y[1])
  );
  OBUF   Y_0_OBUF (
    .I(Y_0_OBUF_11),
    .O(Y[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

