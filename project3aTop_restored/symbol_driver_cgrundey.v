
// Filename:	symbol_driver_cgrundey.v
// Author:		Colin Grundey
// Date:			29 March 2018
// Version:		1
// Description: Sets the output mode to either binary or BCD and
//					 displays a b or d.

module symbol_driver_cgrundey(select, hex_driver);
	input        select;
	output [6:0] hex_driver;

	// select = 0 -> b
	// select = 1 -> d
	assign hex_driver = (select) ? 6'b0100001 : 6'b0000011;
  
endmodule 