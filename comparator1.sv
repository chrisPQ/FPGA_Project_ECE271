module comparator1 #(parameter num2 = 0, parameter N = 10) (input logic [N-1:0] num1, output logic gt, output logic lt);
	assign gt = num1 > num2; 
	assign lt = num1 < num2;
	
endmodule 