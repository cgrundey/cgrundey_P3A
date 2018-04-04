////////////////////////////////////////////////////////////////////////////////
// Filename:    tb_symbol_driver_cgrundey.v
// Author:      Colin Grundey
// Date:        3 April 2018
// Version:     1
// Description: Test bench for symbol driver implementation
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module tb_symbol_driver_cgrundey();

	reg        select;
	wire [6:0] hex_driver;

	symbol_driver_cgrundey DUT1(select, hex_driver[6:0]);
	
	initial begin

	select = 1'b0;
	#20;
	select = 1'b1;
	#20;
	
   end

endmodule
