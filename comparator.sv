module comparator #(parameter N=8, parameter count=6)
	
		(input logic [N-1:0] a,
		output logic agtc,
		output logic altc);
	 
	 assign agtc = (a>=count);
	 assign altc = (a<=count);
	 
endmodule