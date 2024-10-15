// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Fri Jun 09 21:14:21 2023"

module IR_Decode(
	CLK,
	Reset,
	enable,
	shiftIn,
	NextState,
	horizontalStart,
	verticalStart
);


input wire	CLK;
input wire	Reset;
input wire	enable;
input wire	[7:0] shiftIn;
output wire	NextState;
output wire	[9:0] horizontalStart;
output wire	[9:0] verticalStart;

wire	[23:0] clkdivided;
wire	[2:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





codeDecoder	b2v_inst(
	.reset(Reset),
	.clk(clkdivided[18]),
	.data(SYNTHESIZED_WIRE_0),
	.horizontalStart(horizontalStart),
	.verticalStart(verticalStart));
	defparam	b2v_inst.N = 3;


shiftInterpret	b2v_inst1(
	.clk(SYNTHESIZED_WIRE_1),
	.reset(Reset),
	.data(shiftIn),
	.NS(NextState),
	.q(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst1.N = 8;

assign	SYNTHESIZED_WIRE_1 = enable & CLK;


counter	b2v_inst4(
	.clk(CLK),
	.reset(Reset),
	.q(clkdivided));
	defparam	b2v_inst4.N = 24;


endmodule
