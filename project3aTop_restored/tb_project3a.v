////////////////////////////////////////////////////////////////////////////////
// Filename:    tb_project3a.v
// Author:      Colin Grundey
// Date:        29 March 2018
// Version:     1
// Description: This test bench uses the examples from the validation sheet
//              as a way to test the system. 

`timescale 1 ns/100 ps

module tb_project3a();
//  Declare regs and wires.
	reg  [9:0] SW;
	wire [6:0] HEX4, HEX3, HEX2, HEX1, HEX0;
	wire [9:0] LED;


//  Instantiate system.
	project3aTop DUT1(SW, LED, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);

	initial begin
	
	SW = 10'b0000011001;
	#20;
	SW = 10'b0001011001;
	#20;
	SW = 10'b0000001110;
	#20;
	SW = 10'b0001010100;
	#20;	
	
	end

endmodule
