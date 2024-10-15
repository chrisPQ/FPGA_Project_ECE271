module codeDecoder #(parameter N = 2) (input logic[N-1:0] data, input logic reset, input logic clk, 
											output logic[9:0] horizontalStart, output logic[9:0] verticalStart);
	always_ff @(posedge clk)
	begin
		if(reset) begin
			horizontalStart = 0;
			verticalStart = 0;
		end
		case(data)
					
					0: begin horizontalStart = horizontalStart; verticalStart = verticalStart; end 
					1: verticalStart = verticalStart - 1; 
					2: horizontalStart = horizontalStart + 1; 
					3: verticalStart = verticalStart + 1; 
					4: horizontalStart = horizontalStart - 1; 
					default: begin verticalStart = verticalStart; horizontalStart = horizontalStart; end
		endcase
		
		if(horizontalStart > (384)) horizontalStart = 384;
		if(verticalStart > (224)) verticalStart = 224;
		if(horizontalStart < 0) horizontalStart = 0;
		if(verticalStart < 0 ) verticalStart = 0;
	end
endmodule 