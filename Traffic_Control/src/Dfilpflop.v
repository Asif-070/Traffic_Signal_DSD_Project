//-----------------------------------------------------------------------------
//
// Title       : flipflop
// Design      : lab3_a1
// Author      : NaimurRahmanRS
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab3/lab3_a1/src/flipflop.v
// Generated   : Mon Nov 25 10:56:16 2024
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
//{module {flipflop}}

module Dflipflop ( in, out, Clk, load, En, Clear );
	
input in, Clk, load, En, Clear;
output out;
wire in, Clk, load, En, Clear;
reg out;

//}} End of automatically maintained section

// Enter your statements here // 

always @(posedge Clk)
	begin
		if(Clear == 1)
			begin
				out = 0;
			end
		if(En == 0 && load == 1 && Clear == 0 )
			begin
				out = 1'bz;
			end
		if(load == 1 && En == 1 && Clear == 0)
			begin
				out = in;
			end		
	end

endmodule
