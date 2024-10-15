module shiftInterpret #(parameter N = 8) (input logic[N-1:0] data, input logic clk, input logic reset, output logic[2:0] q, output logic NS);

	logic[19:0] count = 0;
	
	always_comb 
		begin
			case(data)
				
				8'b01101111: q=1; //up
				8'b10001111: q=2; //right
				8'b01110111: q=3; //down
				8'b11001111: q=4; //left
				default: q=0;
			endcase
		end
	
	always_ff @(posedge clk) begin
			if(count <= 253124)
				begin
					NS <= 0;
					count <= count + 1;
				end
			else 
				NS <= 1;
				count <= 0;
		end
	
	
endmodule 