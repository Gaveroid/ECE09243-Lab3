module comparch_lab3(out, in, clk, rst,load);
	parameter N=32;
	input [N-1:0] in; 
	input load, clk, rst;
	
	output reg [31:0] out; 
	
	always @(posedge clk or posedge rst)begin 
		if (rst==1) 
			out <= 0;
	
	
		else if (load==1) 
			out <=	in;
		else
			out <= out;
	end
	
endmodule 
	