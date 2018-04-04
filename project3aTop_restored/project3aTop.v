////////////////////////////////////////////////////////////////////////////////
// Filename: project3aTop.v
// Author:   Jason Thweatt
// Date:     28 March 2018
// Revision: 1
//
// This is the top-level module for ECE 3544 Project 3a.
// Do not modify the MODULE DECLARATION or PORTS in this file.
// When synthesizing to the DE1-SoC, this file should be used with the provided
// Quartus project so that the FPGA pin assignments are made correctly.
//
// YOU MUST MAKE THE PIN ASSIGNMENTS FOR THE INPUTS AND OUTPUTS OF THIS MODULE.
// FOLLOW THE INSTRUCTIONS IN THE DOCUMENT ON PIN PLACEMENT.
// CONSULT THE MANUAL FOR INFORMATION ON THE PIN LOCATIONS.

module project3aTop(SW, LED, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
   input  [9:0] SW;
   output [9:0] LED;
   output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	wire   [5:0] conv_out;

   assign LED = SW;

	dual_converter_cgrundey C1(SW[6], SW[5:0], conv_out);
	seven_segment_display_driver_cgrundey D1(conv_out[3:0], HEX0);
	seven_segment_display_driver_cgrundey D2({2'b00, conv_out[5:4]}, HEX1);
	seven_segment_display_driver_cgrundey D3(SW[3:0], HEX2);
	seven_segment_display_driver_cgrundey D4({2'b00, SW[5:4]}, HEX3);
	symbol_driver_cgrundey D5(SW[6], HEX4);
	assign HEX5 = 7'b1111111; // Not using this display so turning it off

endmodule
