////////////////////////////////////////////////////////////////////////////////
// Filename:    tb_seven_segment_display_driver_cgrundey.v
// Author:      Colin Grundey
// Date:        3 April 2018
// Version:     1
// Description: Test bench for seven segment display driver implementation
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module tb_seven_segment_display_driver_cgrundey();

	reg  [3:0] hex_digit;
	wire [6:0] hex_display;

	seven_segment_display_driver_cgrundey DUT1(hex_digit, hex_display);
	
	initial begin

	hex_digit = 4'b0011; //3
	#20;
	hex_digit = 4'b1100; //C
	#20;
	hex_digit = 4'b1001; //9
	#20;
	hex_digit = 4'b0101; //5
	#20;
	
   end

endmodule
