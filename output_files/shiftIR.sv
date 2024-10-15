module shiftIR #(parameter N = 8) (input logic clk, input logic IR, input logic reset, output logic NS, output logic [N-1:0] d);

	logic[16:0] count;
	logic[18:0] nsCount;
	
	always_ff@(posedge clk, posedge reset)
		if(reset) begin NS <= 0; nsCount <= 0; count <= 0; end
		else
		begin
			
			count <= count + 1;
			nsCount <= nsCount + 1;
			
			if(IR==1) 
				begin 
					if(count >= 7500) d <= {d[6:0], 1'b1};
					else begin d <= {d[6:0], 1'b0}; end
					count <= 0;
				end
			if(nsCount >= 168750) NS <= 1;
		end
endmodule 
		
		