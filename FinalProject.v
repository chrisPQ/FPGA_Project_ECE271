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
// CREATED		"Fri Jun 09 21:16:17 2023"

module FinalProject(
	Reset,
	Clock_in,
	IR_SIG,
	NS,
	PS
);


input wire	Reset;
input wire	Clock_in;
input wire	IR_SIG;
output wire	NS;
output wire	PS;

wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	[17:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_14;





counter	b2v_inst(
	.clk(Clock_in),
	.reset(Reset),
	.q(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst.N = 16;


counter	b2v_inst1(
	.clk(SYNTHESIZED_WIRE_12),
	.reset(Reset),
	.q(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst1.N = 18;

assign	PS = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_12 = Clock_in & SYNTHESIZED_WIRE_3;


comparator	b2v_inst3(
	.a(SYNTHESIZED_WIRE_4),
	.agtc(SYNTHESIZED_WIRE_3)
	);
	defparam	b2v_inst3.count = 28124;
	defparam	b2v_inst3.N = 16;


comparator	b2v_inst4(
	.a(SYNTHESIZED_WIRE_5),
	.agtc(SYNTHESIZED_WIRE_13)
	);
	defparam	b2v_inst4.count = 168749;
	defparam	b2v_inst4.N = 18;


comparator	b2v_inst5(
	.a(SYNTHESIZED_WIRE_6),
	
	.altc(SYNTHESIZED_WIRE_14));
	defparam	b2v_inst5.count = 37000;
	defparam	b2v_inst5.N = 8;


counter	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_12),
	.reset(SYNTHESIZED_WIRE_8),
	.q(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst6.N = 8;

assign	NS = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_8 = IR_SIG | Reset;

assign	SYNTHESIZED_WIRE_2 =  ~SYNTHESIZED_WIRE_14;


endmodule
