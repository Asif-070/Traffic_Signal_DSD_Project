//-----------------------------------------------------------------------------
//
// Title       : clock
// Design      : lab3_a1
// Author      : NaimurRahmanRS
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/lab3/lab3_a1/src/clock.v
// Generated   : Mon Nov 25 12:11:40 2024
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
//{module {clock}}

module clock ( strt_clk, clk );

input strt_clk;
reg strt_clk;
output clk;
reg clk;

always @(posedge strt_clk)
	begin
		while(strt_clk)
		begin
			#1 clk <=0;
			#1 clk <=1;
		end
	end

//}} End of automatically maintained section

// Enter your statements here //

endmodule
