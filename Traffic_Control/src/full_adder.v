//-----------------------------------------------------------------------------
//
// Title       : full_adder
// Design      : Lab1
// Author      : Asif
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : c:/Users/Asif/Documents/My_Designs/Lab1/Lab1/src/full_adder.v
// Generated   : Fri Oct 25 18:02:50 2024
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
//{module {full_adder}}

module full_adder ( a ,b ,cin ,sum ,cout );

input a;
wire a;
input b;
wire b;
input cin;
wire cin;
output sum;
wire sum;
output cout;
wire cout;
wire s1,c1,c2;

//}} End of automatically maintained section

half_adder h1( a ,b ,s1 ,c1 );
half_adder h2( s1 ,cin ,sum ,c2 );
assign cout = c1 | c2;

endmodule
