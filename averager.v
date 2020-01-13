`timescale 1ns/1ps

module averager(average, i0, i1, i2, i3, i4, i5, i6, i7, i8);
//DO NOT CHANGE!
	input  [5:0] i0, i1, i2, i3, i4 , i5, i6, i7, i8;
	output [5:0] average;
//---------------------------------------------------
	wire [9:0] c1, c2, c3;
	wire [10:0] c4;
	wire [12:0] c5;
	wire [11:0] c6;
	wire [5:0] c7;
	wire [9:0] cc1;
 	wire [8:0] cc2, cc3;
	wire [10:0] cc4;
 	wire [12:0] cc5;
	wire [9:0] s1;
	wire [9:1]  s2, s3;
	wire [10:1] s4;
	wire [13:0] s5;
	//wire [5:0] s6;
	wire [9:0] ss1, ss2, ss3;
	wire [10:0] ss4;
	wire [6:-4] temp1;
	wire [5:-5] temp2;
	wire [4:-6] temp3;
	wire [1:-6] temp4;
	wire [7:-6] sum;
	//wire [5:0] sum2;
	wire [5:-6] average1;
	wire [5:0] average2;
	wire garbage;
	//wire e0;

	FA1 fa0 (c1[0], ss1[0], i0[0], i1[0], i2[0]);
	FA1 fa1 (c1[1], s1[1], i0[1], i1[1], i2[1]);
	FA1 fa2 (c1[2], s1[2], i0[2], i1[2], i2[2]);
	FA1 fa3 (c1[3], s1[3], i0[3], i1[3], i2[3]);
	FA1 fa4 (c1[4], s1[4], i0[4], i1[4], i2[4]);
	FA1 fa5 (c1[5], s1[5], i0[5], i1[5], i2[5]);
	FA1 fa6 (c1[6], s1[6], i0[5], i1[5], i2[5]);
	FA1 fa7 (c1[7], s1[7], i0[5], i1[5], i2[5]);
	FA1 fa8 (c1[8], s1[8], i0[5], i1[5], i2[5]);
	FA1 fa9 (c1[9], s1[9], i0[5], i1[5], i2[5]);

	FA1 fa11(cc1[0], ss1[1], c1[0], s1[1], 1'b0);
	FA1 fa12(cc1[1], ss1[2], c1[1], s1[2], cc1[0]);
	FA1 fa13(cc1[2], ss1[3], c1[2], s1[3], cc1[1]);
	FA1 fa14(cc1[3], ss1[4], c1[3], s1[4], cc1[2]);
	FA1 fa15(cc1[4], ss1[5], c1[4], s1[5], cc1[3]);
	FA1 fa16(cc1[5], ss1[6], c1[5], s1[6], cc1[4]);
	FA1 fa17(cc1[6], ss1[7], c1[6], s1[7], cc1[5]);
	FA1 fa18(cc1[7], ss1[8], c1[7], s1[8], cc1[6]);
	FA1 fa19(cc1[8], ss1[9], c1[8], s1[9], cc1[7]);
	//FA1 fa20(cc1[9], garbage, c1[9], 1'b0, cc1[8]);


	/*FA1 fa0 (c1[0], s1[0], i0[0], i1[0], 1'b0);
	FA1 fa1 (c1[1], s1[1], i0[1], i1[1], c1[0]);
	FA1 fa2 (c1[2], s1[2], i0[2], i1[2], c1[1]);
	FA1 fa3 (c1[3], s1[3], i0[3], i1[3], c1[2]);
	FA1 fa4 (c1[4], s1[4], i0[4], i1[4], c1[3]);
	FA1 fa5 (c1[5], s1[5], i0[5], i1[5], c1[4]);
	FA1 fa6 (c1[6], s1[6], i0[5], i1[5], c1[5]);
	FA1 fa7 (c1[7], s1[7], i0[5], i1[5], c1[6]);
	FA1 fa8 (c1[8], s1[8], i0[5], i1[5], c1[7]);
	FA1 fa9 (c1[9], s1[9], i0[5], i1[5], c1[8]);

	FA1 fa10 (cc1[0], ss1[0], i2[0], s1[0], 1'b0);
	FA1 fa11 (cc1[1], ss1[1], i2[1], s1[1], cc1[0]);
	FA1 fa12 (cc1[2], ss1[2], i2[2], s1[2], cc1[1]);
	FA1 fa13 (cc1[3], ss1[3], i2[3], s1[3], cc1[2]);
	FA1 fa14 (cc1[4], ss1[4], i2[4], s1[4], cc1[3]);
	FA1 fa15 (cc1[5], ss1[5], i2[5], s1[5], cc1[4]);
	FA1 fa16 (cc1[6], ss1[6], i2[5], s1[6], cc1[5]);
	FA1 fa17 (cc1[7], ss1[7], i2[5], s1[7], cc1[6]);
	FA1 fa18 (cc1[8], ss1[8], i2[5], s1[8], cc1[7]);
	FA1 fa19 (cc1[9], ss1[9], i2[5], s1[9], cc1[8]);*/


	FA1 fa20 (c2[0], ss2[0], i3[0], i4[0], i5[0]);
	FA1 fa21 (c2[1], s2[1], i3[1], i4[1], i5[1]);
	FA1 fa23 (c2[2], s2[2], i3[2], i4[2], i5[2]);
	FA1 fa24 (c2[3], s2[3], i3[3], i4[3], i5[3]);
	FA1 fa25 (c2[4], s2[4], i3[4], i4[4], i5[4]);
	FA1 fa26 (c2[5], s2[5], i3[5], i4[5], i5[5]);
	FA1 fa27 (c2[6], s2[6], i3[5], i4[5], i5[5]);
	FA1 fa28 (c2[7], s2[7], i3[5], i4[5], i5[5]);
	FA1 fa29 (c2[8], s2[8], i3[5], i4[5], i5[5]);
	FA1 fa30 (c2[9], s2[9], i3[5], i4[5], i5[5]);

	FA1 fa32 (cc2[0], ss2[1], c2[0], s2[1], 1'b0);
	FA1 fa33 (cc2[1], ss2[2], c2[1], s2[2], cc2[0]);
	FA1 fa35 (cc2[2], ss2[3], c2[2], s2[3], cc2[1]);
	FA1 fa36 (cc2[3], ss2[4], c2[3], s2[4], cc2[2]);
	FA1 fa37 (cc2[4], ss2[5], c2[4], s2[5], cc2[3]);
	FA1 fa38 (cc2[5], ss2[6], c2[5], s2[6], cc2[4]);
	FA1 fa39 (cc2[6], ss2[7], c2[6], s2[7], cc2[5]);
	FA1 fa40 (cc2[7], ss2[8], c2[7], s2[8], cc2[6]);
	FA1 fa41 (cc2[8], ss2[9], c2[8], s2[9], cc2[7]);
	//FA1 fa42 (cc2[9], garbage, c2[9], 1'b0, cc2[8]);


	FA1 fa43 (c3[0], ss3[0], i6[0], i7[0], i8[0]);
	FA1 fa44 (c3[1], s3[1], i6[1], i7[1], i8[1]);
	FA1 fa45 (c3[2], s3[2], i6[2], i7[2], i8[2]);
	FA1 fa46 (c3[3], s3[3], i6[3], i7[3], i8[3]);
	FA1 fa47 (c3[4], s3[4], i6[4], i7[4], i8[4]);
	FA1 fa48 (c3[5], s3[5], i6[5], i7[5], i8[5]);
	FA1 fa49 (c3[6], s3[6], i6[5], i7[5], i8[5]);
	FA1 fa50 (c3[7], s3[7], i6[5], i7[5], i8[5]);
	FA1 fa51 (c3[8], s3[8], i6[5], i7[5], i8[5]);
	FA1 fa52 (c3[9], s3[9], i6[5], i7[5], i8[5]);


	FA1 fa54 (cc3[0], ss3[1], c3[0], s3[1], 1'b0);
	FA1 fa55 (cc3[1], ss3[2], c3[1], s3[2], cc3[0]);
	FA1 fa56 (cc3[2], ss3[3], c3[2], s3[3], cc3[1]);
	FA1 fa57 (cc3[3], ss3[4], c3[3], s3[4], cc3[2]);
	FA1 fa58 (cc3[4], ss3[5], c3[4], s3[5], cc3[3]);
	FA1 fa59 (cc3[5], ss3[6], c3[5], s3[6], cc3[4]);
	FA1 fa60 (cc3[6], ss3[7], c3[6], s3[7], cc3[5]);
	FA1 fa61 (cc3[7], ss3[8], c3[7], s3[8], cc3[6]);
	FA1 fa62 (cc3[8], ss3[9], c3[8], s3[9], cc3[7]);
	//FA1 fa63 (cc3[9], garbage, c3[9], 1'b0, cc3[8]);



	FA1 fa64 (c4[0], ss4[0], ss1[0], ss2[0], ss3[0]);
	FA1 fa65 (c4[1], s4[1], ss1[1], ss2[1], ss3[1]);
	FA1 fa66 (c4[2], s4[2], ss1[2], ss2[2], ss3[2]);
	FA1 fa67 (c4[3], s4[3], ss1[3], ss2[3], ss3[3]);
	FA1 fa68 (c4[4], s4[4], ss1[4], ss2[4], ss3[4]);
	FA1 fa69 (c4[5], s4[5], ss1[5], ss2[5], ss3[5]);
	FA1 fa70 (c4[6], s4[6], ss1[6], ss2[6], ss3[6]);
	FA1 fa71 (c4[7], s4[7], ss1[7], ss2[7], ss3[7]);
	FA1 fa72 (c4[8], s4[8], ss1[8], ss2[8], ss3[8]);
	FA1 fa73 (c4[9], s4[9], ss1[9], ss2[9], ss3[9]);
	//FA1 fa53 (c4[10], s4[10], ss1[9], ss2[9], ss3[9]);

	FA1 fa74 (cc4[0], ss4[1], c4[0], s4[1], 1'b0);
	FA1 fa75 (cc4[1], ss4[2], c4[1], s4[2], cc4[0]);
	FA1 fa76 (cc4[2], ss4[3], c4[2], s4[3], cc4[1]);
	FA1 fa77 (cc4[3], ss4[4], c4[3], s4[4], cc4[2]);
	FA1 fa78 (cc4[4], ss4[5], c4[4], s4[5], cc4[3]);
	FA1 fa79 (cc4[5], ss4[6], c4[5], s4[6], cc4[4]);
	FA1 fa80 (cc4[6], ss4[7], c4[6], s4[7], cc4[5]);
	FA1 fa81 (cc4[7], ss4[8], c4[7], s4[8], cc4[6]);
	FA1 fa82 (cc4[8], ss4[9], c4[8], s4[9], cc4[7]);
	//FA1 fa83 (cc4[9], ss4[10], c4[9], s4[10], cc4[8]);
	//FA1 fa84 (cc4[10], garbage, c4[10], 1'b0, cc4[9]);

	//DRIVER2 driver24 (temp1[10], ss4[10]);
	//DRIVER2 driver25 (temp1[12], ss4[10]);
	//DRIVER2 driver1 (temp1[11], ss4[9]);
	//DRIVER2 driver2 (temp1[10], ss4[10]);
	/*DRIVER driver3 (temp1[6], ss4[10]);
	DRIVER driver4 (temp1[5], ss4[9]);
	DRIVER driver5 (temp1[4], ss4[8]);
	DRIVER driver6 (temp1[3], ss4[7]);
	DRIVER driver7 (temp1[2], ss4[6]);
	DRIVER driver8 (temp1[1], ss4[5]);
	DRIVER driver9 (temp1[0], ss4[4]);
	DRIVER driver10 (temp1[-1], ss4[3]);
	DRIVER driver11 (temp1[-2], ss4[2]);
	DRIVER driver12 (temp1[-3], ss4[1]);
	DRIVER driver2 (temp1[-4], ss4[0]);*/

	//assign temp1[6] = ss4[10];
	assign temp1[5] = ss4[9];
	assign temp1[4] = ss4[8];
	assign temp1[3] = ss4[7];
	assign temp1[2] =  ss4[6];
	assign temp1[1] =  ss4[5];
	assign temp1[0] =  ss4[4];
	assign temp1[-1] = ss4[3];
	assign temp1[-2] =  ss4[2];
	assign temp1[-3] = ss4[1];
	assign temp1[-4] =  ss4[0];
	//DRIVER2 driver27 (temp2[13], ss4[10]);
	//DRIVER2 driver26 (temp2[12], ss4[10]);
	//DRIVER2 driver13 (temp2[11], ss4[10]);
	/*DRIVER driver14 (temp2[5], ss4[10]);
	DRIVER driver15 (temp2[4], ss4[9]);
	DRIVER driver16 (temp2[3], ss4[8]);
	DRIVER driver17 (temp2[2], ss4[7]);
	DRIVER driver18 (temp2[1], ss4[6]);
	DRIVER driver19 (temp2[0], ss4[5]);
	DRIVER driver20 (temp2[-1], ss4[4]);
	DRIVER driver21 (temp2[-2], ss4[3]);
	DRIVER driver22 (temp2[-3], ss4[2]);
	DRIVER driver23 (temp2[-4], ss4[1]);
	DRIVER driver28 (temp2[-5], ss4[0]);*/

	assign temp2[5] =  ss4[9];
	assign temp2[4] =  ss4[9];
	assign temp2[3] =  ss4[8];
	assign temp2[2] =  ss4[7];
	assign temp2[1] =  ss4[6];
	assign temp2[0] =  ss4[5];
	assign temp2[-1] =  ss4[4];
	assign temp2[-2] =  ss4[3];
	assign temp2[-3] =  ss4[2];
	assign temp2[-4] =  ss4[1];
	assign temp2[-5] =  ss4[0];

	/*DRIVER driver51 (temp3[4], ss4[10]);
	DRIVER driver50 (temp3[3], ss4[9]); 
	DRIVER driver45 (temp3[2], ss4[8]);
	DRIVER driver46 (temp3[1], ss4[7]);
	DRIVER driver41 (temp3[0], ss4[6]);
	DRIVER driver42 (temp3[-1], ss4[5]);
	DRIVER driver29 (temp3[-2], ss4[4]);
	DRIVER driver30 (temp3[-3], ss4[3]);
	DRIVER driver31 (temp3[-4], ss4[2]);
	DRIVER driver32 (temp3[-5], ss4[1]);
	DRIVER driver33 (temp3[-6], ss4[0]);*/

	assign temp3[4] = ss4[9];
	assign temp3[3] = ss4[9];
	assign temp3[2] = ss4[8];
	assign temp3[1] = ss4[7];
	assign temp3[0] = ss4[6];
	assign temp3[-1] = ss4[5];
	assign temp3[-2] = ss4[4];
	assign temp3[-3] = ss4[3];
	assign temp3[-4] = ss4[2];
	assign temp3[-5] = ss4[1];
	//assign temp3[-6] = ss4[0];


	/*DRIVER driver34 (temp4[1], ss4[10]);
	DRIVER driver47 (temp4[0], ss4[9]);
	DRIVER driver48 (temp4[-1], ss4[8]);
	DRIVER driver43 (temp4[-2], ss4[7]);
	DRIVER driver44 (temp4[-3], ss4[6]);
	DRIVER driver35 (temp4[-4], ss4[5]);
	DRIVER driver36 (temp4[-5], ss4[4]);
	DRIVER driver37 (temp4[-6], ss4[3]);*/


	assign temp4[1] = ss4[9];
	assign temp4[0] = ss4[9];
	assign temp4[-1] = ss4[8];
	assign temp4[-2] = ss4[7];
	assign temp4[-3] = ss4[6];
	assign temp4[-4] = ss4[5];
	assign temp4[-5] = ss4[4];
	//assign temp4[-6] = ss4[3];
	//DRIVER2 driver38 (temp4[-7], ss4[2]);
	//DRIVER2 driver39 (temp4[-8], ss4[1]);
	//DRIVER2 driver40 (temp4[-9], ss4[0]);


	//FA1 fa85 (c5[0], sum[-6], 1'b0, 1'b0, temp3[-6]);
	FA1 fa86 (c5[1], sum[-5], temp2[-5], 1'b0, temp3[-5]);
	FA1 fa87 (c5[2], s5[2], temp2[-4], temp1[-4], temp3[-4]);
	FA1 fa88 (c5[3], s5[3], temp2[-3], temp1[-3], temp3[-3]);
	FA1 fa89 (c5[4], s5[4], temp2[-2], temp1[-2], temp3[-2]);
	FA1 fa90 (c5[5], s5[5], temp2[-1], temp1[-1], temp3[-1]);
	FA1 fa91 (c5[6], s5[6], temp2[0], temp1[0], temp3[0]);
	FA1 fa92 (c5[7], s5[7], temp2[1], temp1[1], temp3[1]);
	FA1 fa93 (c5[8], s5[8], temp2[2], temp1[2], temp3[2]);
	FA1 fa94 (c5[9], s5[9], temp2[3], temp1[3], temp3[3]);
	FA1 fa95 (c5[10], s5[10], temp2[4], temp1[4], temp3[4]);
	FA1 fa96 (c5[11], s5[11], temp2[5], temp1[5], temp3[4]);
	//FA1 fa97 (c5[12], s5[12], temp2[5], temp1[6], temp3[4]);
	/*FA1 fa98 (c5[13], s5[13], temp2[13], temp1[13], ss4[10]);
	FA1 fa99 (c5[14], s5[14], temp2[13], temp1[13], ss4[10]);
	FA1 fa100 (c5[15], s5[15], temp2[13], temp1[13], ss4[10]);*/

	

	//FA1 fa102 (cc5[0], sum[-5], c5[0], s5[1], 1'b0);
	FA1 fa103 (cc5[1], sum[-4], c5[1], s5[2], 1'b0);
	FA1 fa104 (cc5[2], sum[-3], c5[2], s5[3], cc5[1]);
	FA1 fa105 (cc5[3], sum[-2], c5[3], s5[4], cc5[2]);
	FA1 fa106 (cc5[4], sum[-1], c5[4], s5[5], cc5[3]);
	FA1 fa107 (cc5[5], sum[0], c5[5], s5[6], cc5[4]);
	FA1 fa108 (cc5[6], sum[1], c5[6], s5[7], cc5[5]);
	FA1 fa109 (cc5[7], sum[2], c5[7], s5[8], cc5[6]);
	FA1 fa110 (cc5[8], sum[3], c5[8], s5[9], cc5[7]);
	FA1 fa111 (cc5[9], sum[4], c5[9], s5[10], cc5[8]);
	FA1 fa112 (cc5[10], sum[5], c5[10], s5[11], cc5[9]);
	//FA1 fa113 (cc5[11], sum[6], c5[11], 1'b0, cc5[10]);
	//FA1 fa114 (cc5[12], sum[7], c5[12], 1'b0, cc5[11]);
	/*FA1 fa115 (cc5[13], sum[14], c5[13], s5[14], cc5[12]);
	FA1 fa116 (cc5[14], sum[15], c5[14], s5[15], cc5[13]);
	FA1 fa117 (cc5[15] , garbage, c5[15], 1'b0, cc5[14]);*/
	
	//FA1 fa137 (c6[0], average1[-6], sum[-6], temp4[-6], 1'b0);	
	FA1 fa136 (c6[1], average1[-5], sum[-5], temp4[-5], 1'b0);	
	FA1 fa134 (c6[2], average1[-4], sum[-4], temp4[-4], c6[1]);	
	FA1 fa135 (c6[3], average1[-3], sum[-3], temp4[-3], c6[2]);	
	FA1 fa124 (c6[4], average1[-2], sum[-2], temp4[-2], c6[3]);	
	FA1 fa125 (c6[5], average1[-1], sum[-1], temp4[-1], c6[4]);	
	FA1 fa118 (c6[6], average1[0], sum[0], temp4[0], c6[5]);
	FA1 fa119 (c6[7], average1[1], sum[1], temp4[1], c6[6]);
	FA1 fa120 (c6[8], average1[2], sum[2], temp4[1], c6[7]);
	FA1 fa121 (c6[9], average1[3], sum[3], temp4[1], c6[8]);
	FA1 fa122 (c6[10], average1[4], sum[4], temp4[1], c6[9]);
	FA1 fa123 (c6[11], average1[5], sum[5], temp4[1], c6[10]);
	//FA1 fa132 (c6[12], average1[6], sum[6], temp4[1], c6[11]);
	//FA1 fa133 (c6[13], average1[7], sum[7], 1'b0, c6[8]);

	FA1 fa126 (c7[0], average2[0], average1[0] ,1'b1, 1'b0);
	FA1 fa127 (c7[1], average2[1], average1[1] ,1'b0, c7[0]);
	FA1 fa128 (c7[2], average2[2], average1[2] ,1'b0, c7[1]);
	FA1 fa129 (c7[3], average2[3], average1[3] ,1'b0, c7[2]);
	FA1 fa130 (c7[4], average2[4], average1[4] ,1'b0, c7[3]);
	FA1 fa131 (c7[5], average2[5], average1[5] ,1'b0, c7[4]);
	
	//EO eo1 (e0, average1[-1], average1[6]);
	
	MUX21H mux1 (average[0], average1[0], average2[0], average1[-1]);
	MUX21H mux2 (average[1], average1[1], average2[1], average1[-1]);
	MUX21H mux3 (average[2], average1[2], average2[2], average1[-1]);
	MUX21H mux4 (average[3], average1[3], average2[3], average1[-1]);
	MUX21H mux5 (average[4], average1[4], average2[4], average1[-1]);
	MUX21H mux6 (average[5], average1[5], average2[5], average1[-1]);







endmodule
