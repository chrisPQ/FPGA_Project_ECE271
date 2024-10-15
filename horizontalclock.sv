module horizontalclock #(parameter lowtime = 95, parameter hightime = 799) (input logic clk, input logic reset, output logic horizontalSync);
	
	logic [9:0] counter;
	
	always_ff @(posedge clk, posedge reset)
		if(reset) 
			begin
				counter <= 0;
				horizontalSync <= 1;
			end
		else
			begin
			counter <= counter + 1;
			if (counter < lowtime) 
				horizontalSync <= 0;
			else if (counter < hightime)
				horizontalSync <= 1;
			if (counter > (hightime-1))
				begin
					counter <= 10'd0;	
					horizontalSync <= 0;
				end
			end
endmodule
