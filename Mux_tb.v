module Mux_tb(o, i0, i1, i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,
	i29,i30,i31, s);
	output reg [7:0] i0, i1, i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,
	i29,i30,i31;
   output reg [4:0] s;
	output [7:0] o;
	integer i;
	
	Mux depression (o, i0, i1, i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,
	i29,i30,i31, s);
	
	initial begin 
		s=0;
		
		{i0, i1, i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,
	i29,i30,i31} <= $random;
				#10 
		
		for (i=0; i<=31;i=i+1)begin 
			#10 s=s+1;
		end
		#2000
		$stop;
	end
endmodule
		