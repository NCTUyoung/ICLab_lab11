module CHIP(
  // input signals
  clk,
  rst_n,
  in_valid,
  in_image,
  // output signals
  out_valid,
  out_image
);

input clk;
input rst_n;
input in_valid;
input [7:0] in_image;

output out_valid;
output [7:0] out_image;



wire 		C_clk, BUF_CLK;
wire 		C_rst_n;
wire 		C_in_valid;
wire [7:0]  C_in_image;
wire  	    C_out_valid;
wire [7:0]  C_out_image;
//TA has already defined for you
//LBP module  

LBP LBP(                                                                                                                                                                    
	.clk(BUF_CLK),
	.rst_n(C_rst_n),
	.in_valid(C_in_valid),
	.in_image(C_in_image),
	
	.out_valid(C_out_valid),
	.out_image(C_out_image)
);

CLKBUFX20 buf0(.A(C_clk),.Y(BUF_CLK));
P8C I_CLK      ( .Y(C_clk),        .P(clk),        .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b0), .CSEN(1'b1) );
P8C I_RESET    ( .Y(C_rst_n),      .P(rst_n),      .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );

P4C I_VALID    ( .Y(C_in_valid),   .P(in_valid),   .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );

P4C I_IN_0     ( .Y(C_in_image[0]), .P(in_image[0]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );
P4C I_IN_1     ( .Y(C_in_image[1]), .P(in_image[1]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );
P4C I_IN_2     ( .Y(C_in_image[2]), .P(in_image[2]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );
P4C I_IN_3     ( .Y(C_in_image[3]), .P(in_image[3]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );
P4C I_IN_4     ( .Y(C_in_image[4]), .P(in_image[4]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );
P4C I_IN_5     ( .Y(C_in_image[5]), .P(in_image[5]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );
P4C I_IN_6     ( .Y(C_in_image[6]), .P(in_image[6]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );
P4C I_IN_7     ( .Y(C_in_image[7]), .P(in_image[7]), .A(1'b0), .ODEN(1'b0), .OCEN(1'b0), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0) );

P8C O_VALID    ( .A(C_out_valid), 	.P(out_valid), 	 .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_0    ( .A(C_out_image[0]), .P(out_image[0]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_1    ( .A(C_out_image[1]), .P(out_image[1]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_2    ( .A(C_out_image[2]), .P(out_image[2]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_3    ( .A(C_out_image[3]), .P(out_image[3]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_4    ( .A(C_out_image[4]), .P(out_image[4]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_5    ( .A(C_out_image[5]), .P(out_image[5]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_6    ( .A(C_out_image[6]), .P(out_image[6]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
P8C O_OUT_7    ( .A(C_out_image[7]), .P(out_image[7]), .ODEN(1'b1), .OCEN(1'b1), .PU(1'b1), .PD(1'b0), .CEN(1'b1), .CSEN(1'b0));
//I/O power 3.3V pads x? (DVDD + DGND)

PVDDR VDDP0 ();
PVSSR GNDP0 ();
PVDDR VDDP1 ();
PVSSR GNDP1 ();
PVDDR VDDP2 ();
PVSSR GNDP2 ();
PVDDR VDDP3 ();
PVSSR GNDP3 ();
PVDDR VDDP4 ();
PVSSR GNDP4 ();
//Core poweri 1.8V pads x? (VDD + GND)

PVDDC VDDC0 ();
PVSSC GNDC0 ();
PVDDC VDDC1 ();
PVSSC GNDC1 ();
PVDDC VDDC2 ();
PVSSC GNDC2 ();
PVDDC VDDC3 ();
PVSSC GNDC3 ();
PVDDC VDDC4 ();
PVSSC GNDC4 ();


endmodule

