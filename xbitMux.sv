module xbitMux #(parameter width = 3) (input logic [width-1:0] data, input logic select, output logic [width-1:0] out);

	assign out = select ? data : 0;
	
endmodule 