module Data_Memory(Address, WriteData, WriteEnable, ReadEnable, ReadData, clk, rst);
    
    parameter BITSIZE = 64;
    parameter REGSIZE = 64;
    input [63:0] Address;
    input [BITSIZE-1:0] WriteData;
    input WriteEnable,ReadEnable;
    output reg [BITSIZE-1:0] ReadData;
    input clk, rst;
    wire [63:0] true_address;  //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    reg [BITSIZE-1:0] data_memory [REGSIZE-1:0];   // Entire list of registers
    
    integer i;                                  // Used below to rst all registers
    
    // Asyncronous read of register file.
    always @(Address, data_memory[Address])
    begin
    if (ReadEnable!=0)
        ReadData = data_memory[Address];
    end
    
    
    // Write back to register file on clk edge.
    always @(posedge clk)
    begin
        if (rst)
            for (i=0; i<REGSIZE; i=i+1) data_memory[i] <= 'b0; // rst all registers
        else
        begin
            if (WriteEnable != 0)
                data_memory[Address] <= WriteData; //If writeback is enabled and not 0 register.
        end
    end
    
assign true_address=Address/8;

endmodule
