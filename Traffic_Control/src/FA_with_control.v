//-----------------------------------------------------------------------------
//
// Title       : FA_with_control
// Design      : Lab2
// Author      : Asif
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : c:/Users/Asif/Documents/My_Designs/Lab2/Lab2/src/FA_with_control.v
// Generated   : Sun Nov 17 22:31:05 2024
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
//{module {FA_with_control}}

module FA_with_control ( a ,b ,cin ,s1 ,s0 ,sum ,cout );

input a;
wire a;
input b;
wire b;
input cin;
wire cin;
input s1;
wire s1;
input s0;
wire s0;
output sum;
wire sum;
output cout;
wire cout;
wire b1;

//}} End of automatically maintained section

// Enter your statements here //

assign b1 = (~s1 & s0 & b) | (s1 & ~s0 & ~b) | (s1 & s0);
full_adder f1( a ,b1 ,cin ,sum ,cout );

endmodule
