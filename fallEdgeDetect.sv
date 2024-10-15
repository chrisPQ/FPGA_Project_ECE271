module fallEdgeDetect (input logic clk, input logic IR, output logic fall_edge_sig);

	logic levelIR;
	

	always_ff @(posedge clk) begin
	  levelIR <= IR;
	end

	assign fall_edge_sig = (~IR) & levelIR;
	
endmodule 