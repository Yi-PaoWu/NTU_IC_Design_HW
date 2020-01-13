/* ----------------------------- DO NOT CHANGE ! ---------------------------- */
`timescale 1ns/1ps

module COA(clk, rst_n, A, B, C, D, valid_in, valid_out, COA_num);
    input clk, rst_n;
    
    // Input/Output Data
    input   [5-1:0] A;
    input   [5-1:0] B;
    input   [5-1:0] C;
    output [10-1:0] D;

    // Handshake signal
    input  valid_in;
    output valid_out;

    // Area count
    output [50:0] COA_num;
/* ----------------------------- DO NOT CHANGE ! ---------------------------- */


/* --------------------- Write your code from this line --------------------- */


wire [9:0] ma, mb, mc;

wire [10:0] st;
wire [10:0] st2;
wire [50:0] num[46:0];
wire [9:0] pipe0, pipe1, pipe2;
wire valid_o;



// ======= PIPELINE ====== //






//===== END OF MULTIPLICATION =====//

MUT mut0(ma,A,num[0]);
MUT mut1(mb,B,num[1]);
MUT mut2(mc,C,num[2]);


FA_10 fa0(st,mb,mc,num[3]);
SUB_10 sub0(st2,st,ma,num[4]);


FD2 fd0(D[0],st2[1],clk,rst_n,num[5]);
FD2 fd1(D[1],st2[2],clk,rst_n,num[6]);
FD2 fd2(D[2],st2[3],clk,rst_n,num[7]);
FD2 fd3(D[3],st2[4],clk,rst_n,num[8]);
FD2 fd4(D[4],st2[5],clk,rst_n,num[9]);
FD2 fd5(D[5],st2[6],clk,rst_n,num[10]);
FD2 fd6(D[6],st2[7],clk,rst_n,num[11]);
FD2 fd7(D[7],st2[8],clk,rst_n,num[12]);
FD2 fd8(D[8],st2[9],clk,rst_n,num[13]);
FD2 fd9(D[9],st2[10],clk,rst_n,num[14]);


FD2 fd10(valid_out,valid_in,clk,rst_n,num[15]);






/* -------------------- Add up your number of transistors ------------------- */
    
    
 assign COA_num = num[0]+num[1]+num[2]+num[3]+num[4]+num[5]+num[6]+num[7]+num[8]+num[9]+num[10]+num[11]+num[12]+num[13]+num[14]+num[15];
endmodule


module MUT(sss0,B,number);

input [5-1:0] B;
output [9:0] sss0;
output [50:0] number;

wire [4:0] ppb0, ppb1, ppb2, ppb3, ppb4;
wire [50:0] num[46:0];
wire [4:0] c0, cc0, cb;
wire [6:0] ccc0;
wire [4:0] s0, ss0, sb;

AN2 or0(ppb0[0],B[0],B[0],num[0]);
AN2 or1(ppb0[1],B[0],B[1],num[1]);
AN2 or2(ppb0[2],B[0],B[2],num[2]);
AN2 or3(ppb0[3],B[0],B[3],num[3]);
AN2 or4(ppb0[4],B[0],B[4],num[4]);

AN2 or5(ppb1[0],B[1],B[0],num[5]);
AN2 or6(ppb1[1],B[1],B[1],num[6]);
AN2 or7(ppb1[2],B[1],B[2],num[7]);
AN2 or8(ppb1[3],B[1],B[3],num[8]);
AN2 or9(ppb1[4],B[1],B[4],num[9]);

AN2 or10(ppb2[0],B[2],B[0],num[10]);
AN2 or11(ppb2[1],B[2],B[1],num[11]);
AN2 or12(ppb2[2],B[2],B[2],num[12]);
AN2 or13(ppb2[3],B[2],B[3],num[13]);
AN2 or14(ppb2[4],B[2],B[4],num[14]);

AN2 or15(ppb3[0],B[3],B[0],num[15]);
AN2 or16(ppb3[1],B[3],B[1],num[16]);
AN2 or17(ppb3[2],B[3],B[2],num[17]);
AN2 or18(ppb3[3],B[3],B[3],num[18]);
AN2 or19(ppb3[4],B[3],B[4],num[19]);

AN2 or20(ppb4[0],B[4],B[0],num[20]);
AN2 or21(ppb4[1],B[4],B[1],num[21]);
AN2 or22(ppb4[2],B[4],B[2],num[22]);
AN2 or23(ppb4[3],B[4],B[3],num[23]);
AN2 or24(ppb4[4],B[4],B[4],num[24]);


HA1 fa0(c0[0],s0[0],ppb0[1],ppb1[0],num[25]);
FA1 fa1(c0[1],s0[1],ppb0[2],ppb1[1],ppb2[0],num[26]);
FA1 fa2(c0[2],s0[2],ppb0[3],ppb1[2],ppb2[1],num[27]);
FA1 fa3(c0[3],s0[3],ppb0[4],ppb1[3],ppb2[2],num[28]);
HA1 fa4(c0[4],s0[4],ppb1[4],ppb2[3],num[29]);

HA1 fa5(cc0[0],ss0[0],c0[0],s0[1],num[30]);
FA1 fa6(cc0[1],ss0[1],c0[1],s0[2],cc0[0],num[31]);
FA1 fa7(cc0[2],ss0[2],c0[2],s0[3],cc0[1],num[32]);
FA1 fa8(cc0[3],ss0[3],c0[3],s0[4],cc0[2],num[33]);
FA1 fa9(cc0[4],ss0[4],c0[4],ppb2[4],cc0[3],num[34]);

HA1 fa10(cb[0],sb[0],ppb3[1],ppb4[0],num[35]);
FA1 fa11(cb[1],sb[1],ppb3[2],ppb4[1],cb[0],num[36]);
FA1 fa12(cb[2],sb[2],ppb3[3],ppb4[2],cb[1],num[37]);
FA1 fa13(cb[3],sb[3],ppb3[4],ppb4[3],cb[2],num[38]);
HA1 fa14(cb[4],sb[4],ppb4[4],cb[3],num[39]);

assign sss0[0] = ppb0[0];
assign sss0[1] = s0[0];
assign sss0[2] = ss0[0];

HA1 fa15(ccc0[0],sss0[3],ppb3[0],ss0[1],num[40]);
FA1 fa16(ccc0[1],sss0[4],sb[0],ss0[2],ccc0[0],num[41]);
FA1 fa17(ccc0[2],sss0[5],sb[1],ss0[3],ccc0[1],num[42]);
FA1 fa18(ccc0[3],sss0[6],sb[2],ss0[4],ccc0[2],num[43]);
FA1 fa19(ccc0[4],sss0[7],sb[3],cc0[4],ccc0[3],num[44]);
HA1 fa20(ccc0[5],sss0[8],sb[4],ccc0[4],num[45]);
HA1 fa21(ccc0[6],sss0[9],cb[4],ccc0[5],num[46]);

assign number = num[0]+num[1]+num[2]+num[3]+num[4]+num[5]+num[6]+num[7]+num[8]+num[9]+num[10]+num[11]+num[12]+num[13]+num[14]+num[15]+num[16]+num[17]+num[18]+num[19]+num[20]+num[21]+num[22]+num[23]+num[24]+num[25]+num[26]+num[27]+num[28]+num[29]+num[30]+num[31]+num[32]+num[33]+num[34]+num[35]+num[36]+num[37]+num[38]+num[39]+num[40]+num[41]+num[42]+num[43]+num[44]+num[45]+num[46];

endmodule



module FA_10(st,sss0,sss2,number);
input [9:0] sss0,sss2;
output [10:0] st;
output [50:0] number;

wire [50:0] num[9:0];
wire [8:0] ct;

HA1 fa0(ct[0],st[0],sss0[0],sss2[0],num[0]);
FA1 fa1(ct[1],st[1],sss0[1],sss2[1],ct[0],num[1]);
FA1 fa2(ct[2],st[2],sss0[2],sss2[2],ct[1],num[2]);
FA1 fa3(ct[3],st[3],sss0[3],sss2[3],ct[2],num[3]);
FA1 fa4(ct[4],st[4],sss0[4],sss2[4],ct[3],num[4]);
FA1 fa5(ct[5],st[5],sss0[5],sss2[5],ct[4],num[5]);
FA1 fa6(ct[6],st[6],sss0[6],sss2[6],ct[5],num[6]);
FA1 fa7(ct[7],st[7],sss0[7],sss2[7],ct[6],num[7]);
FA1 fa8(ct[8],st[8],sss0[8],sss2[8],ct[7],num[8]);
FA1 fa9(st[10],st[9],sss0[9],sss2[9],ct[8],num[9]);

assign number = num[0]+num[1]+num[2]+num[3]+num[4]+num[5]+num[6]+num[7]+num[8]+num[9];

endmodule


module SUB_10(st2,st,sss1,number);

input [9:0]  sss1;
input [10:0] st;
output [10:0] st2;
output [50:0] number;

wire [9:0] sss1_n;
wire [10:0] ct2;
wire [50:0] num[20:0];


IV iv0(sss1_n[0],sss1[0],num[0]);
IV iv1(sss1_n[1],sss1[1],num[1]);
IV iv2(sss1_n[2],sss1[2],num[2]);
IV iv3(sss1_n[3],sss1[3],num[3]);
IV iv4(sss1_n[4],sss1[4],num[4]);
IV iv5(sss1_n[5],sss1[5],num[5]);
IV iv6(sss1_n[6],sss1[6],num[6]);
IV iv7(sss1_n[7],sss1[7],num[7]);
IV iv8(sss1_n[8],sss1[8],num[8]);
IV iv9(sss1_n[9],sss1[9],num[9]);

FA1 fa76(ct2[0],st2[0],st[0],sss1_n[0],1'b1,num[10]);
FA1 fa77(ct2[1],st2[1],st[1],sss1_n[1],ct2[0],num[11]);
FA1 fa78(ct2[2],st2[2],st[2],sss1_n[2],ct2[1],num[12]);
FA1 fa79(ct2[3],st2[3],st[3],sss1_n[3],ct2[2],num[13]);
FA1 fa80(ct2[4],st2[4],st[4],sss1_n[4],ct2[3],num[14]);
FA1 fa81(ct2[5],st2[5],st[5],sss1_n[5],ct2[4],num[15]);
FA1 fa82(ct2[6],st2[6],st[6],sss1_n[6],ct2[5],num[16]);
FA1 fa83(ct2[7],st2[7],st[7],sss1_n[7],ct2[6],num[17]);
FA1 fa84(ct2[8],st2[8],st[8],sss1_n[8],ct2[7],num[18]);
FA1 fa85(ct2[9],st2[9],st[9],sss1_n[9],ct2[8],num[19]);
FA1 fa86(ct2[10],st2[10],st[10],1'b1,ct2[9],num[20]);

assign number = num[0]+num[1]+num[2]+num[3]+num[4]+num[5]+num[6]+num[7]+num[8]+num[9]+num[10]+num[11]+num[12]+num[13]+num[14]+num[15]+num[16]+num[17]+num[18]+num[19]+num[20];

endmodule


module FA_5(st,sss0,sss2,number);
input [5-1:0] sss0,sss2;
output [5:0] st;
output [50:0] number;

wire [50:0] num[4:0];
wire [3:0] ct;

HA1 fa0(ct[0],st[0],sss0[0],sss2[0],num[0]);
FA1 fa1(ct[1],st[1],sss0[1],sss2[1],ct[0],num[1]);
FA1 fa2(ct[2],st[2],sss0[2],sss2[2],ct[1],num[2]);
FA1 fa3(ct[3],st[3],sss0[3],sss2[3],ct[2],num[3]);
FA1 fa4(st[5],st[4],sss0[4],sss2[4],ct[3],num[4]);



assign number = num[0]+num[1]+num[2]+num[3]+num[4];

endmodule


module SUB_5(st2,st,sss1,number);

input [5-1:0]  sss1;
input [5:0] st;
output [5:0] st2;
output [50:0] number;

wire [4:0] sss1_n;
wire [5:0] ct2;
wire [50:0] num[10:0];


IV iv0(sss1_n[0],sss1[0],num[0]);
IV iv1(sss1_n[1],sss1[1],num[1]);
IV iv2(sss1_n[2],sss1[2],num[2]);
IV iv3(sss1_n[3],sss1[3],num[3]);
IV iv4(sss1_n[4],sss1[4],num[4]);


FA1 fa76(ct2[0],st2[0],st[0],sss1_n[0],1'b1,num[5]);
FA1 fa77(ct2[1],st2[1],st[1],sss1_n[1],ct2[0],num[6]);
FA1 fa78(ct2[2],st2[2],st[2],sss1_n[2],ct2[1],num[7]);
FA1 fa79(ct2[3],st2[3],st[3],sss1_n[3],ct2[2],num[8]);
FA1 fa80(ct2[4],st2[4],st[4],sss1_n[4],ct2[3],num[9]);
FA1 fa86(ct2[5],st2[5],st[5],1'b1,ct2[4],num[10]);

assign number = num[0]+num[1]+num[2]+num[3]+num[4]+num[5]+num[6]+num[7]+num[8]+num[9]+num[10];

endmodule



