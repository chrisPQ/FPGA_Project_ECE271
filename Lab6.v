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
// CREATED		"Fri Jun 09 21:20:25 2023"

module Lab6(
	clk,
	reset,
	Hsync,
	Vsync,
	blanking,
	clk_div,
	Horizontal_Location,
	Vertical_Location
);


input wire	clk;
input wire	reset;
output wire	Hsync;
output wire	Vsync;
output wire	blanking;
output wire	clk_div;
output wire	[9:0] Horizontal_Location;
output wire	[9:0] Vertical_Location;

wire	clkdiv;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[9:0] SYNTHESIZED_WIRE_21;
wire	[9:0] SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;

assign	Horizontal_Location = SYNTHESIZED_WIRE_21;
assign	Vertical_Location = SYNTHESIZED_WIRE_22;




counter	b2v_inst(
	.clk(clkdiv),
	.reset(SYNTHESIZED_WIRE_0),
	.q(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst.N = 10;

assign	Vsync = ~(SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2);

assign	Hsync = ~(SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4);


synchronizer	b2v_inst12(
	.clk(clkdiv),
	.d(SYNTHESIZED_WIRE_5),
	.q(SYNTHESIZED_WIRE_23));


comparator	b2v_inst13(
	.a(SYNTHESIZED_WIRE_21),
	.agtc(SYNTHESIZED_WIRE_20)
	);
	defparam	b2v_inst13.count = 639;
	defparam	b2v_inst13.N = 10;


comparator	b2v_inst14(
	.a(SYNTHESIZED_WIRE_21),
	.agtc(SYNTHESIZED_WIRE_5)
	);
	defparam	b2v_inst14.count = 797;
	defparam	b2v_inst14.N = 10;


comparator	b2v_inst15(
	.a(SYNTHESIZED_WIRE_22),
	.agtc(SYNTHESIZED_WIRE_19)
	);
	defparam	b2v_inst15.count = 479;
	defparam	b2v_inst15.N = 10;


comparator	b2v_inst16(
	.a(SYNTHESIZED_WIRE_22),
	.agtc(SYNTHESIZED_WIRE_12)
	);
	defparam	b2v_inst16.count = 523;
	defparam	b2v_inst16.N = 10;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_23 | reset;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_11 | reset;


synchronizer	b2v_inst19(
	.clk(clkdiv),
	.d(SYNTHESIZED_WIRE_12),
	.q(SYNTHESIZED_WIRE_11));


comparator	b2v_inst2(
	.a(SYNTHESIZED_WIRE_21),
	.agtc(SYNTHESIZED_WIRE_4)
	);
	defparam	b2v_inst2.count = 655;
	defparam	b2v_inst2.N = 10;


comparator	b2v_inst3(
	.a(SYNTHESIZED_WIRE_21),
	
	.altc(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst3.count = 752;
	defparam	b2v_inst3.N = 10;


clockdivider	b2v_inst5(
	.clk(clk),
	.reset(reset),
	.q(clkdiv));
	defparam	b2v_inst5.N = 1;


counter	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_23),
	.reset(SYNTHESIZED_WIRE_16),
	.q(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst6.N = 10;


comparator	b2v_inst7(
	.a(SYNTHESIZED_WIRE_22),
	.agtc(SYNTHESIZED_WIRE_2)
	);
	defparam	b2v_inst7.count = 489;
	defparam	b2v_inst7.N = 10;


comparator	b2v_inst8(
	.a(SYNTHESIZED_WIRE_22),
	
	.altc(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst8.count = 492;
	defparam	b2v_inst8.N = 10;

assign	blanking = ~(SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20);

assign	clk_div = clkdiv;

endmodule
