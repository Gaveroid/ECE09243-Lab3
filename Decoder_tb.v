module Decoder_tb(s,enable,o);
	output reg [4:0] s;
	output reg enable;
	output wire [7:0] o;
	integer i;
	Decoder dec (.select(s), .x(o), .enable(enable));
	
	initial begin
		enable=1;
		s=0;
		for(i=0; i<=31; i=i+1)begin 
			#10 s=s+1;
		end
			
		#2000
		$stop;
	end
	
endmodule
