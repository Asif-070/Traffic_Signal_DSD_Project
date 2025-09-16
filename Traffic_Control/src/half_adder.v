//-----------------------------------------------------------------------------
//
// Title       : half_adder
// Design      : Lab1
// Author      : Asif
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : c:/Users/Asif/Documents/My_Designs/Lab1/Lab1/src/half_adder.v
// Generated   : Fri Oct 25 17:59:23 2024
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
//{module {half_adder}}

module half_adder ( a ,b ,sum ,cout );

input a;
wire a;
input b;
wire b;
output sum;
wire sum;
output cout;
wire cout;

//}} End of automatically maintained section

assign sum = a ^ b;
assign cout = a & b;

endmodule
