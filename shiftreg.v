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
// CREATED		"Wed Jun 07 15:03:53 2023"

module shiftreg(
	Enable,
	reset,
	IR_Signal,
	NS,
	D
);


input wire	Enable;
input wire	reset;
input wire	IR_Signal;
output wire	NS;
output wire	[7:0] D;

wire	[17:0] counter;
wire	shiftreset;
wire	sin;
wire	[11:0] timing;
wire	SYNTHESIZED_WIRE_0;

assign	NS = SYNTHESIZED_WIRE_0;



assign	shiftreset =  ~IR_Signal;


counter	b2v_inst2(
	.clk(Enable),
	.reset(shiftreset),
	.q(timing));
	defparam	b2v_inst2.N = 12;


comparator	b2v_inst3(
	.a(timing),
	.agtc(sin)
	);
	defparam	b2v_inst3.count = 3000;
	defparam	b2v_inst3.N = 12;


shiftregister	b2v_inst4(
	.clk(shiftreset),
	.reset(reset),
	.sin(sin),
	.q(D));
	defparam	b2v_inst4.N = 8;


counter	b2v_inst5(
	.clk(Enable),
	.reset(SYNTHESIZED_WIRE_0),
	.q(counter));
	defparam	b2v_inst5.N = 18;


comparator	b2v_inst6(
	.a(counter),
	.agtc(SYNTHESIZED_WIRE_0)
	);
	defparam	b2v_inst6.count = 168749;
	defparam	b2v_inst6.N = 18;


endmodule
