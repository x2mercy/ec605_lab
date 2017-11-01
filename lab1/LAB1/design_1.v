//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
//Date        : Thu Sep 14 19:45:33 2017
//Host        : vlsi36 running 64-bit CentOS release 6.9 (Final)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1
   (S1,
    S2,
    S3,
    Y,
    clk,
    rst);
  input S1;
  input S2;
  input S3;
  output Y;
  input clk;
  input rst;

  wire Lab1_clk_gen_0_clk_0;
  wire Lab1_clk_gen_0_clk_1;
  wire Lab1_clk_gen_0_clk_2;
  wire Lab1_clk_gen_0_clk_3;
  wire Lab1_clk_gen_0_clk_4;
  wire Lab1_clk_gen_0_clk_5;
  wire Lab1_clk_gen_0_clk_6;
  wire Lab1_clk_gen_0_clk_7;
  wire S1_1;
  wire S2_1;
  wire S3_1;
  wire clk_1;
  wire mul4_1_y;
  wire mul4_2_y;
  wire rst_1;
  wire xup_or2_0_y;

  assign S1_1 = S1;
  assign S2_1 = S2;
  assign S3_1 = S3;
  assign Y = xup_or2_0_y;
  assign clk_1 = clk;
  assign rst_1 = rst;
design_1_Lab1_clk_gen_0_0 Lab1_clk_gen_0
       (.clk(clk_1),
        .clk_0(Lab1_clk_gen_0_clk_0),
        .clk_1(Lab1_clk_gen_0_clk_1),
        .clk_2(Lab1_clk_gen_0_clk_2),
        .clk_3(Lab1_clk_gen_0_clk_3),
        .clk_4(Lab1_clk_gen_0_clk_4),
        .clk_5(Lab1_clk_gen_0_clk_5),
        .clk_6(Lab1_clk_gen_0_clk_6),
        .clk_7(Lab1_clk_gen_0_clk_7),
        .rst(rst_1));
mul2_1_imp_1AI1I00 mul2_1
       (.a(mul4_1_y),
        .a1(S3_1),
        .b(mul4_2_y),
        .y(xup_or2_0_y));
mul4_1_imp_LYFRXF mul4_1
       (.a(Lab1_clk_gen_0_clk_2),
        .a1(S2_1),
        .a2(S1_1),
        .a3(Lab1_clk_gen_0_clk_0),
        .b(Lab1_clk_gen_0_clk_3),
        .b1(Lab1_clk_gen_0_clk_1),
        .y(mul4_1_y));
mul4_2_imp_WXI5LY mul4_2
       (.a(Lab1_clk_gen_0_clk_6),
        .a1(S2_1),
        .a2(S1_1),
        .a3(Lab1_clk_gen_0_clk_4),
        .b(Lab1_clk_gen_0_clk_7),
        .b1(Lab1_clk_gen_0_clk_5),
        .y(mul4_2_y));
endmodule

module mul2_1_imp_10ELI3M
   (a,
    a1,
    b,
    y);
  input a;
  input a1;
  input b;
  output y;

  wire a1_1;
  wire a_1;
  wire b_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_or2_0_y;

  assign a1_1 = a1;
  assign a_1 = a;
  assign b_1 = b;
  assign y = xup_or2_0_y;
design_1_xup_and2_0_0 xup_and2_0
       (.a(a_1),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
design_1_xup_and2_1_0 xup_and2_1
       (.a(a1_1),
        .b(b_1),
        .y(xup_and2_1_y));
design_1_xup_inv_0_0 xup_inv_0
       (.a(a1_1),
        .y(xup_inv_0_y));
design_1_xup_or2_0_0 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule

module mul2_1_imp_1AI1I00
   (a,
    a1,
    b,
    y);
  input a;
  input a1;
  input b;
  output y;

  wire S3_1;
  wire mul4_1_y;
  wire mul4_2_y;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_or2_0_y;

  assign S3_1 = a1;
  assign mul4_1_y = a;
  assign mul4_2_y = b;
  assign y = xup_or2_0_y;
design_1_xup_and2_0_6 xup_and2_0
       (.a(mul4_1_y),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
design_1_xup_and2_1_6 xup_and2_1
       (.a(S3_1),
        .b(mul4_2_y),
        .y(xup_and2_1_y));
design_1_xup_inv_0_6 xup_inv_0
       (.a(S3_1),
        .y(xup_inv_0_y));
design_1_xup_or2_0_7 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule

module mul2_1_imp_1BFZ6S0
   (a,
    a1,
    b,
    y);
  input a;
  input a1;
  input b;
  output y;

  wire a1_1;
  wire a_1;
  wire b_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_or2_0_y;

  assign a1_1 = a1;
  assign a_1 = a;
  assign b_1 = b;
  assign y = xup_or2_0_y;
design_1_xup_and2_0_3 xup_and2_0
       (.a(a_1),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
design_1_xup_and2_1_3 xup_and2_1
       (.a(a1_1),
        .b(b_1),
        .y(xup_and2_1_y));
design_1_xup_inv_0_3 xup_inv_0
       (.a(a1_1),
        .y(xup_inv_0_y));
design_1_xup_or2_0_3 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule

module mul2_2_imp_14WQJF9
   (a,
    a1,
    b,
    y);
  input a;
  input a1;
  input b;
  output y;

  wire a1_1;
  wire a_1;
  wire b_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_or2_0_y;

  assign a1_1 = a1;
  assign a_1 = a;
  assign b_1 = b;
  assign y = xup_or2_0_y;
design_1_xup_and2_0_4 xup_and2_0
       (.a(a_1),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
design_1_xup_and2_1_4 xup_and2_1
       (.a(a1_1),
        .b(b_1),
        .y(xup_and2_1_y));
design_1_xup_inv_0_4 xup_inv_0
       (.a(a1_1),
        .y(xup_inv_0_y));
design_1_xup_or2_0_4 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule

module mul2_2_imp_1FT30VB
   (a,
    a1,
    b,
    y);
  input a;
  input a1;
  input b;
  output y;

  wire a1_1;
  wire a_1;
  wire b_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_or2_0_y;

  assign a1_1 = a1;
  assign a_1 = a;
  assign b_1 = b;
  assign y = xup_or2_0_y;
design_1_xup_and2_0_1 xup_and2_0
       (.a(a_1),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
design_1_xup_and2_1_1 xup_and2_1
       (.a(a1_1),
        .b(b_1),
        .y(xup_and2_1_y));
design_1_xup_inv_0_1 xup_inv_0
       (.a(a1_1),
        .y(xup_inv_0_y));
design_1_xup_or2_0_1 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule

module mul2_3_imp_10MYTNA
   (a,
    a1,
    b,
    y);
  input a;
  input a1;
  input b;
  output y;

  wire a1_1;
  wire a_1;
  wire b_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_or2_0_y;

  assign a1_1 = a1;
  assign a_1 = a;
  assign b_1 = b;
  assign y = xup_or2_0_y;
design_1_xup_and2_0_5 xup_and2_0
       (.a(a_1),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
design_1_xup_and2_1_5 xup_and2_1
       (.a(a1_1),
        .b(b_1),
        .y(xup_and2_1_y));
design_1_xup_inv_0_5 xup_inv_0
       (.a(a1_1),
        .y(xup_inv_0_y));
design_1_xup_or2_0_5 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule

module mul2_3_imp_1C7NOTG
   (a,
    a1,
    b,
    y);
  input a;
  input a1;
  input b;
  output y;

  wire a1_1;
  wire a_1;
  wire b_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_inv_0_y;
  wire xup_or2_0_y;

  assign a1_1 = a1;
  assign a_1 = a;
  assign b_1 = b;
  assign y = xup_or2_0_y;
design_1_xup_and2_0_2 xup_and2_0
       (.a(a_1),
        .b(xup_inv_0_y),
        .y(xup_and2_0_y));
design_1_xup_and2_1_2 xup_and2_1
       (.a(a1_1),
        .b(b_1),
        .y(xup_and2_1_y));
design_1_xup_inv_0_2 xup_inv_0
       (.a(a1_1),
        .y(xup_inv_0_y));
design_1_xup_or2_0_2 xup_or2_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .y(xup_or2_0_y));
endmodule

module mul4_1_imp_LYFRXF
   (a,
    a1,
    a2,
    a3,
    b,
    b1,
    y);
  input a;
  input a1;
  input a2;
  input a3;
  input b;
  input b1;
  output y;

  wire A_1;
  wire B_1;
  wire C_1;
  wire D_1;
  wire S1_1;
  wire S2_1;
  wire a_2;
  wire b_2;
  wire mul2_3_y;

  assign A_1 = a3;
  assign B_1 = b1;
  assign C_1 = a;
  assign D_1 = b;
  assign S1_1 = a2;
  assign S2_1 = a1;
  assign y = mul2_3_y;
mul2_1_imp_10ELI3M mul2_1
       (.a(A_1),
        .a1(S1_1),
        .b(B_1),
        .y(a_2));
mul2_2_imp_1FT30VB mul2_2
       (.a(C_1),
        .a1(S1_1),
        .b(D_1),
        .y(b_2));
mul2_3_imp_1C7NOTG mul2_3
       (.a(a_2),
        .a1(S2_1),
        .b(b_2),
        .y(mul2_3_y));
endmodule

module mul4_2_imp_WXI5LY
   (a,
    a1,
    a2,
    a3,
    b,
    b1,
    y);
  input a;
  input a1;
  input a2;
  input a3;
  input b;
  input b1;
  output y;

  wire A_1;
  wire B_1;
  wire C_1;
  wire D_1;
  wire S1_1;
  wire S2_1;
  wire a_2;
  wire b_2;
  wire mul2_3_y;

  assign A_1 = a3;
  assign B_1 = b1;
  assign C_1 = a;
  assign D_1 = b;
  assign S1_1 = a2;
  assign S2_1 = a1;
  assign y = mul2_3_y;
mul2_1_imp_1BFZ6S0 mul2_1
       (.a(A_1),
        .a1(S1_1),
        .b(B_1),
        .y(a_2));
mul2_2_imp_14WQJF9 mul2_2
       (.a(C_1),
        .a1(S1_1),
        .b(D_1),
        .y(b_2));
mul2_3_imp_10MYTNA mul2_3
       (.a(a_2),
        .a1(S2_1),
        .b(b_2),
        .y(mul2_3_y));
endmodule
