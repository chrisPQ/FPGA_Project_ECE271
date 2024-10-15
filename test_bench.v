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
// CREATED		"Fri Jun 09 21:13:27 2023"

module test_bench(
	IR_IN,
	CLK,
	Reset,
	hsync,
	vsync,
	blue,
	green,
	red,
	register
);


input wire	IR_IN;
input wire	CLK;
input wire	Reset;
output wire	hsync;
output wire	vsync;
output wire	[3:0] blue;
output wire	[3:0] green;
output wire	[3:0] red;
output wire	[7:0] register;

wire	big_reset;
wire	blank;
wire	[7:0] clkdiv;
wire	[15:0] d;
wire	data_en;
wire	decode_en;
wire	IR;
wire	[7:0] shift_data;
wire	start_en;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[9:0] SYNTHESIZED_WIRE_5;
wire	[9:0] SYNTHESIZED_WIRE_6;
wire	[9:0] SYNTHESIZED_WIRE_7;
wire	[9:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[0:15] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_10 = 0;




FinalProject	b2v_inst(
	.Clock_in(SYNTHESIZED_WIRE_0),
	.Reset(big_reset),
	.IR_SIG(IR),
	.NS(SYNTHESIZED_WIRE_2),
	.PS(SYNTHESIZED_WIRE_1));


stateControl	b2v_inst10(
	.clk(clkdiv[2]),
	.reset(Reset),
	.IR(IR),
	.PS(SYNTHESIZED_WIRE_1),
	.start(SYNTHESIZED_WIRE_2),
	.data(SYNTHESIZED_WIRE_3),
	.decode(SYNTHESIZED_WIRE_4),
	.startEn(start_en),
	.dataEn(data_en),
	.decodeEn(decode_en),
	.completeReset(big_reset));


IR_Decode	b2v_inst12(
	.enable(decode_en),
	.CLK(clkdiv[2]),
	.Reset(Reset),
	.shiftIn(shift_data),
	.NextState(SYNTHESIZED_WIRE_4),
	.horizontalStart(SYNTHESIZED_WIRE_5),
	.verticalStart(SYNTHESIZED_WIRE_7));


spriteAddress	b2v_inst14(
	
	.column(SYNTHESIZED_WIRE_5),
	.hc(SYNTHESIZED_WIRE_6),
	.row(SYNTHESIZED_WIRE_7),
	.vc(SYNTHESIZED_WIRE_8),
	.pixEnable(SYNTHESIZED_WIRE_9)
	);
	defparam	b2v_inst14.spriteSize = 256;


Lab6	b2v_inst15(
	.clk(CLK),
	.reset(Reset),
	
	.Hsync(hsync),
	.blanking(blank),
	.Vsync(vsync),
	.Horizontal_Location(SYNTHESIZED_WIRE_6),
	.Vertical_Location(SYNTHESIZED_WIRE_8));


xbitMux	b2v_inst16(
	.select(SYNTHESIZED_WIRE_9),
	.data(SYNTHESIZED_WIRE_10),
	.out(d));
	defparam	b2v_inst16.width = 16;


xbitMux	b2v_inst17(
	.select(blank),
	.data(d[15:12]),
	.out(red));
	defparam	b2v_inst17.width = 4;


xbitMux	b2v_inst18(
	.select(blank),
	.data(d[11:8]),
	.out(green));
	defparam	b2v_inst18.width = 4;


xbitMux	b2v_inst19(
	.select(blank),
	.data(d[7:4]),
	.out(blue));
	defparam	b2v_inst19.width = 4;


counter	b2v_inst21(
	.clk(CLK),
	.reset(Reset),
	.q(clkdiv));
	defparam	b2v_inst21.N = 8;


shiftreg	b2v_inst24(
	.Enable(SYNTHESIZED_WIRE_11),
	.IR_Signal(IR),
	.reset(big_reset),
	.NS(SYNTHESIZED_WIRE_3),
	.D(shift_data));


assign	SYNTHESIZED_WIRE_11 = data_en & clkdiv[2];

assign	SYNTHESIZED_WIRE_0 = start_en & clkdiv[2];

assign	IR = IR_IN;
assign	register = shift_data;

endmodule
