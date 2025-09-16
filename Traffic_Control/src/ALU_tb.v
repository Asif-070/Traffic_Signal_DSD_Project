//-----------------------------------------------------------------------------
//
// Title       : test
// Design      : Lab2
// Author      : Asif
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : c:/Users/Asif/Documents/My_Designs/Lab2/Lab2/src/test.v
// Generated   : Sun Nov 17 22:33:32 2024
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
//{module {test}}

module ALU_tb ();

//}} End of automatically maintained section

	reg a4,a3,a2,a1,a0;	 //a{4-0}
	reg b4,b3,b2,b1,b0;
	reg cin,s1,s0;
	wire o4, o3 ,o2 ,o1 ,o0 ,carry;
	
	
	p_adder p1(a4, a3 ,a2 ,a1 ,a0,b4 ,b3 ,b2 ,b1 ,b0 ,cin ,s1 ,s0 ,o4 ,o3 ,o2 ,o1 ,o0 ,carry );
	initial
		begin
			// Test Case 1: Add two numbers with no carry-in
	        a4 = 1; a3 = 0; a2 = 1; a1 = 0; a0 = 0; 
	        b4 = 0; b3 = 0; b2 = 0; b1 = 0; b0 = 0; 
	        cin = 1; s1 = 0; s0 = 0;
	        #1 $display("Test 1 | A: %b%b%b%b%b, B: %b%b%b%b%b, Cin: %b | Output: %b%b%b%b%b, Carry: %b",
	                    a4, a3, a2, a1, a0, b4, b3, b2, b1, b0, cin, o4, o3, o2, o1, o0, carry);
	
	        // Test Case 2: Add two numbers with carry-in
	        a4 = 0; a3 = 1; a2 = 1; a1 = 1; a0 = 1; 
	        b4 = 1; b3 = 0; b2 = 1; b1 = 0; b0 = 1; 
	        cin = 1; s1 = 1; s0 = 1;
	        #1 $display("Test 2 | A: %b%b%b%b%b, B: %b%b%b%b%b, Cin: %b | Output: %b%b%b%b%b, Carry: %b",
	                    a4, a3, a2, a1, a0, b4, b3, b2, b1, b0, cin, o4, o3, o2, o1, o0, carry);
	
	        // Test Case 3: Subtract two numbers
	        a4 = 1; a3 = 0; a2 = 1; a1 = 0; a0 = 1; 
	        b4 = 0; b3 = 1; b2 = 0; b1 = 1; b0 = 1; 
	        cin = 0; s1 = 1; s0 = 0; // Assuming s1=1, s0=0 indicates subtraction
	        #1 $display("Test 3 | A: %b%b%b%b%b, B: %b%b%b%b%b, Cin: %b | Output: %b%b%b%b%b, Carry: %b",
	                    a4, a3, a2, a1, a0, b4, b3, b2, b1, b0, cin, o4, o3, o2, o1, o0, carry);
	
	        // Test Case 4: Add two numbers resulting in overflow
	        a4 = 1; a3 = 1; a2 = 1; a1 = 1; a0 = 1; 
	        b4 = 1; b3 = 1; b2 = 1; b1 = 1; b0 = 1; 
	        cin = 1; s1 = 1; s0 = 1;
	        #1 $display("Test 4 | A: %b%b%b%b%b, B: %b%b%b%b%b, Cin: %b | Output: %b%b%b%b%b, Carry: %b",
	                    a4, a3, a2, a1, a0, b4, b3, b2, b1, b0, cin, o4, o3, o2, o1, o0, carry);
	
	        // Test Case 5: No operation (output remains unchanged)
	        a4 = 1; a3 = 1; a2 = 0; a1 = 0; a0 = 1; 
	        b4 = 0; b3 = 1; b2 = 0; b1 = 1; b0 = 0; 
	        cin = 0; s1 = 0; s0 = 0; // Assuming s1=0, s0=0 indicates no operation
	        #1 $display("Test 5 | A: %b%b%b%b%b, B: %b%b%b%b%b, Cin: %b | Output: %b%b%b%b%b, Carry: %b",
	                    a4, a3, a2, a1, a0, b4, b3, b2, b1, b0, cin, o4, o3, o2, o1, o0, carry);
		
		end

endmodule
