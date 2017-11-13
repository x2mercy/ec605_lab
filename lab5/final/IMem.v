//`timescale 1ns / 1ns
//module Instruction_Memory(Address, ReadData1);
//parameter BITSIZE = 32;
//parameter REGSIZE = 32;
//input [REGSIZE-1:0] Address;
//output reg [BITSIZE-1:0] ReadData1;

//reg [BITSIZE-1:0] memory_file [0:REGSIZE-1];	// Entire list of memory

//// Asyncronous read of memory. Was not specified.
//always @(Address, memory_file[Address])
//begin
//	ReadData1 = memory_file[Address];
//end

//integer i;
////MY method of filling the memory instead of through a test bench
//initial
//	begin
//	    i = 0;
//		memory_file[i] = 32'b11110010100_0000000000000001_00000; //MOVK x0 = 1
//		i = i+1;
//		memory_file[i] = 32'b11110010100_0000000000000001_00001; //MOVK x1 = 1
//		i = i+1;
//		memory_file[i] = 32'b10001011000_00001_000000_00000_00001; //ADD x1 = 2
//		i = i+1;
//		memory_file[i] = 32'b10001011000_00001_000000_00000_00001; //ADD x1 = 3
//		i = i+1;
//		memory_file[i] = 32'b10001011000_00001_000000_00000_00001; //ADD x1 = 4
//		i = i+1;
//		memory_file[i] = 32'b11001011000_00000_000000_00001_00001; //SUB x1 = 3
//		i = i+1;
//		memory_file[i] = 32'b11111000000_00000000000_00010_00001; //STUR mem[x2=0] = x1 =3  
//		i = i+1;
//		memory_file[i] = 32'b11111000010_00000000000_00010_00000; //LDUR x0 = mem[x2=0] = 3
//		i = i+1;
//		memory_file[i] = 32'b10101010000_00001_000000_00000_00011; //EOR x3 = x0 ^ x1 = 0
//        i = i+1;
//        memory_file[i] = 32'b11111000000_00000000000_00010_00011; // STUR mem[0] = x3 =0
//        i = i+1;
//        memory_file[i] = 32'b10110101000_0000000000000010_00000; // cbnz x0 = 3 != 0 --> branch to pc = pc + 2
//        i = i+1;
//        memory_file[i] = 32'b11110010100_0000000000000001_00000; //MOVK x0 = 1
//        i = i+1;
//        memory_file[i] = 32'b11110010100_0000000000000010_00000; //MOVK x0 = 2
//        i = i+1;
//        memory_file[i] = 32'b10001011000_00001_000000_00000_00001; //ADD x1 = x1 + x0 = 3+2 = 5
//        i = i+1;
//        memory_file[i] = 32'b10001010000_00001_000000_00000_00101; //AND x5 = 0011 & 0010  = 0010 = 2
//        i = i+1;
//        memory_file[i] = 32'b10001010000_00001_000000_00101_00000; //AND x0 = 0101 & 0010  = 0
//        i = i+1;
//        memory_file[i] = 32'b00010100000_000000000000000000010;//branch pc = pc +2
//        i = i+1;
//        memory_file[i] = 32'b11110010100_0000000000000001_00000; //MOVK x0 = 1
//        i = i+1;
//        memory_file[i] = 32'b11110010100_0000000000000010_00000; //MOVK x0 = 2
//        i = i+1;
//        memory_file[i] = 32'b10001011000_00001_000000_00000_00001; //ADD weilekan x0 = 2 
//        i = i+1;      
//	end

//endmodule
`timescale 1ns / 1ns
module Instruction_Memory(Address, ReadData1);
parameter BITSIZE = 32;
parameter REGSIZE = 32;
input [REGSIZE-1:0] Address;
output reg [BITSIZE-1:0] ReadData1;

reg [BITSIZE-1:0] memory_file [0:REGSIZE-1];	// Entire list of memory

//// Asyncronous read of memory. Was not specified.
//always @(Address, memory_file[Address])
//begin
//	ReadData1 = memory_file[Address];
//end

//integer i;
////MY method of filling the memory instead of through a test bench
//initial
//	begin
//	i = 0;
//    memory_file[i] = 32'b11111000010_00000000000_00010_10000; //LDUR
//    i = i+1;
//    memory_file[i] = 32'b11110010100_0000000000000001_00000; //MOVK
//    i = i+1;
//    memory_file[i] = 32'b11110010100_0000000000010001_10001; //MOVK
//    i = i+1;
//    memory_file[i] = 32'b11110010100_0000000000000111_00001; //MOVK
//    i=i+1;
//    memory_file[i] = 32'b11001011000_00000_000000_00001_00001; //SUB
//    i=i+1;
//    memory_file[i] = 32'b10110101000_1111111111111111_00001;//CBNZ
//    i = i+1;
//    memory_file[i] = 32'b11111000000_00000000000_00010_10001; //STUR
//    i=i+1;
//    memory_file[i] = 32'b11111000010_00000000000_00010_10000; //LDUR
//    i=i+1;
//    memory_file[i] = 32'b11001011000_00000_000000_10000_00001; //SUB
//    i = i+1;
//    memory_file[i] = 32'b00010100000_1111111111111111_11010;//branch                                                                         
//	end

//endmodule

always @(Address, memory_file[Address])
begin
	ReadData1 = memory_file[Address];
end

integer i;
//MY method of filling the memory instead of through a test bench
initial
	begin

	        i = 0;
		    memory_file[i] = 32'b11110010100_0000000000000101_00000;   // MOVK, X0 = 0101 (5)
		    i = i+1;
		    memory_file[i] = 32'b11110010100_0000000000000011_00001;   // MOVK, X1 = 0011 (3)
            i = i+1;
		    memory_file[i] = 32'b10001010000_00001_000000_00000_00010; // AND, X2 = X0 & X1 (1)
		    i = i+1; 
		    memory_file[i] = 32'b10101010000_00001_000000_00000_00010; // EOR, X2 = X0 ^ X1 (6)
            i = i+1; 
            memory_file[i] = 32'b10001011000_00001_000000_00000_00010; // ADD, X2 = X0 + X1 (8)
            i = i+1;
            memory_file[i] = 32'b11001011000_00000_000000_00001_00010; // SUB, X2 = X1 - X0 (-2)
            i = i+1; 
            memory_file[i] = 32'b11110010100_1111111111111111_00010;   // MOVK, X2 = ffff (-1)
            i = i+1;
            memory_file[i] = 32'b11110010100_0000000000000001_00011;   // MOVK, X3 = 0001 (1)
            i = i+1;
            memory_file[i] = 32'b00010100000_000000000000000000010;    // BRANCH, pc = pc + 2
            i = i+1; 
            memory_file[i] = 32'b10001011000_00011_000000_00010_00010; // ADD, X2 = X2 + X3
            i = i+1; 
            memory_file[i] = 32'b10110101000_1111111111111111_00010;   // CBNZ, if (X2 != 0) pc = pc - 1 
            i = i+1; 
		    memory_file[i] = 32'b11111000000_00000000001_00001_00000;  // STUR, M[X1 + 1] = X0
            i = i+1; 
            memory_file[i] = 32'b11111000010_00000000001_00001_00100;  // LDUR, X4 = M[X1 + 1] 
            i = i+1; 
            	end
        
        endmodule