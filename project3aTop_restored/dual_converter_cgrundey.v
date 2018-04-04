
// Filename:	dual_converter_cgrundey.v
// Author:		Colin Grundey
// Date:			29 March 2018
// Version:		1
// Description: Selects between binary to BCD and BCD to binary conversion.

module dual_converter_cgrundey(conv_sel, conv_in, conv_out);
	input        conv_sel;
	input  [5:0] conv_in;
	output [5:0] conv_out;
	wire   [5:0] conv1, conv2;
	

	sn184_cgrundey C1(1'b0, conv_in, conv1);
	sn185_cgrundey C2(1'b0, conv_in, conv2);
	
	assign conv_out = (conv_sel) ? conv1 : conv2;
	
endmodule 