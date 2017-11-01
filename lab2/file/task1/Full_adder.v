`timescale 1ns / 1ns

module Full_adder(A, B, Cin, Cout, Sum);
    input A, B, Cin;
    output Cout,Sum;

    wire w1, w2,w3;
    
    and and1(w1, A, B);
    and and2(w2, A, Cin);
    and and3(w3, B, Cin);
    xor xor1(Sum, A, B, Cin);
    or  or1(Cout, w1, w2,w3);

endmodule
