module reg_file_tb(SA, SB, DA, D, W, rst, clk, A, B);
		output reg [4:0] SA,SB,DA;
		output reg [31:0] D;
		output reg W, rst, clk;
		output wire [31:0] A,B;
		
		reg_file boom (A, B, SA, SB, D, DA, W, rst, clk);
		wire [31:0] R0, R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,
	R27,R28,R29,R30,R31;
	initial begin 
		clk <= 1'b0;
		rst <=1'b1;
		D<= 32'b0;
		W <= 1'b1;
		DA<= 5'd31;
		SA<= 5'd30;
		SB<= 5'd29;
		#10 rst<= 1'b0;
		#320 W<= 1'b0;
		#320 $stop;
	end 
	
	always 
		#5 clk <= ~clk;
		
	always begin 
		//increment data address 
		#10 D ={$random, $random};
		DA<= DA+5'b1;
		SA<= SA+5'b1; //increment select bits
		SB<= SB+5'b1;
		  
	end 
	
	assign R0=boom.R0;
	assign R1=boom.R1;
	assign R2=boom.R2;
	assign R3=boom.R3;
	assign R4=boom.R4;
	assign R5=boom.R5;
	assign R6=boom.R6;
	assign R7=boom.R7;
	assign R8=boom.R8;
	assign R9=boom.R9;
	assign R10=boom.R10;
	assign R11=boom.R11;
	assign R12=boom.R12;
	assign R13=boom.R13;
	assign R14=boom.R14;
	assign R15=boom.R15;
	assign R16=boom.R16;
	assign R17=boom.R17;
	assign R18=boom.R18;
	assign R19=boom.R19;
	assign R20=boom.R20;
	assign R21=boom.R21;
	assign R22=boom.R22;
	assign R23=boom.R23;
	assign R24=boom.R24;
	assign R25=boom.R25;
	assign R26=boom.R26;
	assign R27=boom.R27;
	assign R28=boom.R28;
	assign R29=boom.R29;
	assign R30=boom.R30;
	assign R31=boom.R31;
endmodule 