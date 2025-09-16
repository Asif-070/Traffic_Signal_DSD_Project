//-----------------------------------------------------------------------------
//
// Title       : p_adder
// Design      : Lab2
// Author      : Asif
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : c:/Users/Asif/Documents/My_Designs/Lab2/Lab2/src/p_adder.v
// Generated   : Sun Nov 17 22:37:34 2024
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {p_adder}}

module p_adder (a4 ,a3 ,a2 ,a1 ,a0 ,b4 ,b3 ,b2 ,b1 ,b0 ,cin ,s1 ,s0 ,o4 ,o3 ,o2 ,o1 ,o0 ,carry );

input a4;
wire a4;
input a3;
wire a3;
input a2;
wire a2;
input a1;
wire a1;
input a0;
wire a0;
input b4;
wire b4;
input b3;
wire b3;
input b2;
wire b2;
input b1;
wire b1;
input b0;
wire b0;
input cin;
wire cin;
input s1;
wire s1;
input s0;
wire s0;
output o4;
wire o4;
output o3;
wire o3;
output o2;
wire o2;
output o1;
wire o1;
output o0;
wire o0;
output carry;
wire carry;			 

wire c0,c1,c2,c3;

//}} End of automatically maintained section

FA_with_control fun1( a0 ,b0, cin ,s1 ,s0 ,o0 ,c0 );
FA_with_control fun2( a1 ,b1, c0 ,s1 ,s0 ,o1 ,c1 );
FA_with_control fun3( a2 ,b2, c1 ,s1 ,s0 ,o2 ,c2 );
FA_with_control fun4( a3 ,b3, c2 ,s1 ,s0 ,o3 ,c3 );
FA_with_control fun5( a4 ,b4, c3 ,s1 ,s0 ,o4 ,carry );

endmodule
