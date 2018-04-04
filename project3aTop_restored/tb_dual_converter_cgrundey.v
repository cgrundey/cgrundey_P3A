////////////////////////////////////////////////////////////////////////////////
// Filename:    tb_dual_converter_cgrundey.v
// Author:      Colin Grundey
// Date:        3 April 2018
// Version:     1
// Description: Test bench for dual converter implementation
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module tb_dual_converter_cgrundey();

	reg        conv_sel;
	reg  [5:0] conv_in;
	wire [5:0] conv_out;

	dual_converter_cgrundey DUT1(conv_sel, conv_in, conv_out);
	
	initial begin

	conv_sel = 1'b0;
	conv_in = 6'b011001;
	#20;
	conv_sel = 1'b1;
	#20;
	conv_sel = 1'b0;
	conv_in = 6'b001110;
	#20;
	conv_sel = 1'b1;
	conv_in = 6'b010100;
	#20;
	
   end

endmodule
