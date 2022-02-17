module reg_file(A, B, SA, SB, D, DA, W, rst, clk);
	input [4:0] SA, SB, DA;//Select A-A Address,Select B-B Address, Data Destination addy
	input W, clk, rst;//Write enable
	input [31:0] A, B, D;//A bus, B bus, Data input
	wire [31:0] load_enable;
	

	
	wire [31:0] R0, R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,
	R27,R28,R29,R30,R31;
	
	//Decoder(select, enable, x)
	Decoder dcode (DA, W,load_enable);
	
	
	//comparch_lab3(out, in, clk, rst,load)
	comparch_lab3 reg0 (R0, D, clk, rst, load_enable[0]);
	comparch_lab3 reg1 (R1, D, clk, rst, load_enable[1]);
	comparch_lab3 reg2 (R2, D, clk, rst,load_enable[2]);
	comparch_lab3 reg3 (R3, D, clk, rst,load_enable[3]);
	comparch_lab3 reg4 (R4, D, clk, rst,load_enable[4]);
	comparch_lab3 reg5 (R5, D, clk, rst,load_enable[5]);
	comparch_lab3 reg6 (R6, D, clk, rst,load_enable[6]);
	comparch_lab3 reg7 (R7, D, clk, rst,load_enable[7]);
	comparch_lab3 reg8 (R8, D, clk, rst,load_enable[8]);
	comparch_lab3 reg9 (R9, D, clk, rst,load_enable[9]);
	comparch_lab3 reg10 (R10, D, clk, rst,load_enable[10]);
	comparch_lab3 reg11 (R11, D, clk, rst,load_enable[11]);
	comparch_lab3 reg12 (R12, D, clk, rst,load_enable[12]);
	comparch_lab3 reg13 (R13, D, clk, rst,load_enable[13]);
	comparch_lab3 reg14 (R14, D, clk, rst,load_enable[14]);
	comparch_lab3 reg15 (R15, D, clk, rst,load_enable[15]);
	comparch_lab3 reg16 (R16, D, clk, rst,load_enable[16]);
	comparch_lab3 reg17 (R17, D, clk, rst,load_enable[17]);
	comparch_lab3 reg18 (R18, D, clk, rst,load_enable[18]);
	comparch_lab3 reg19 (R19, D, clk, rst,load_enable[19]);
	comparch_lab3 reg20 (R20, D, clk, rst,load_enable[20]);
	comparch_lab3 reg21 (R21, D, clk, rst,load_enable[21]);
	comparch_lab3 reg22 (R22, D, clk, rst,load_enable[22]);
	comparch_lab3 reg23 (R23, D, clk, rst,load_enable[23]);
	comparch_lab3 reg24 (R24, D, clk, rst,load_enable[24]);
	comparch_lab3 reg25 (R25, D, clk, rst,load_enable[25]);
	comparch_lab3 reg26 (R26, D, clk, rst,load_enable[26]);
	comparch_lab3 reg27 (R27, D, clk, rst,load_enable[27]);
	comparch_lab3 reg28 (R28, D, clk, rst,load_enable[28]);
	comparch_lab3 reg29 (R29, D, clk, rst,load_enable[29]);
	comparch_lab3 reg30 (R30, D, clk, rst,load_enable[30]);
	//comparch_lab3 reg31 (R31, D, clk, rst,load_enable[31]);
	assign R31 = 32'b0;
		
	
	//wire [31:0] M0, M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15,M16,M17,M18,M19,M20,M21,M22,M23,M24,M25,M26,
	//M27,M28,M29,M30,M31;
	
	Mux muxA (A,R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,
	R27,R28,R29,R30,R31, SA);
	Mux muxB (B,R0, R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,
	R27,R28,R29,R30,R31, SB);
endmodule
