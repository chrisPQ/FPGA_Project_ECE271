module spriteAddress #(parameter spriteSize = 256) (input logic[9:0] hc, input logic[9:0] vc, input logic[9:0] row, input logic[9:0] column, input logic en, output logic[15:0] address, output logic pixEnable);
	logic[15:0] ypix; 
	logic[15:0] xpix;
	always_comb begin
		xpix = hc - column;
		ypix = vc - row;
		
		address = ypix*spriteSize + xpix;
		if (ypix < spriteSize & xpix < spriteSize) pixEnable = 1;
		else pixEnable = 0;
	end

endmodule 