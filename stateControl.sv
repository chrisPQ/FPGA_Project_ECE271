module stateControl (input logic clk, input logic reset, input logic IR, input logic PS, input logic start, input logic data, 
				input logic decode, output logic startEn, output logic dataEn, output logic decodeEn, output logic completeReset);
	enum logic[1:0] {S0, S1, S2, S3} state, nextstate; 
	logic[15:0] count;
	logic buffer;
	
	always_ff @(posedge clk, posedge reset) 
	begin
		if (reset) 
		begin
			state <= S0;
			completeReset <= 1; 
			buffer <= 0;
			count <= 0;
		end
		else 
		begin
			state <= nextstate;
			
			
			
			if(state == S0) 
			begin
				if(IR == 0) count <= count + 1;
				else count <= 0;
				
				if(count >= 56250) begin buffer <= 1; count <= 0; end
				else buffer <= 0;
				
				completeReset <= 1; 
				decodeEn <= 0;
				startEn <= 0;
				dataEn <= 0;
			end
			else if(state == S1) 
			begin
				completeReset <= 0; 
				startEn <= 1; 
					
				decodeEn <= 0;
				dataEn <= 0;
			end
			else if(state == S2) 
			begin
					completeReset <= 0; 
					startEn <= 0; 
					dataEn <= 1;
				decodeEn <= 0;
			end
			else if(state == S3) 
			begin
					completeReset <= 0; 
					startEn <= 0;
				 decodeEn <= 1;
					dataEn <= 0;
			end
			else 
			begin 
				completeReset <= 0; 
				decodeEn <= 0;
				startEn <= 0;
				dataEn <= 0;
			end
		
		end
	end
		
	always_comb 
	begin
		case(state) 
			S0: nextstate <= (buffer == 1) ? S1: S0; 
			S1: begin nextstate <= (PS == 1) ? S0: S1; nextstate <= ((start == 1) & (PS == 0)) ? S2: S1;  end
			S2: nextstate <= (data == 1) ? S3: S2;
			S3: nextstate <= (decode == 1) ? S0: S3;
			default: nextstate <= S0; 
		endcase
	
	
	end
	
endmodule 