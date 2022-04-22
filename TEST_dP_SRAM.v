`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:13:06 04/09/2022
// Design Name:   dp_sram
// Module Name:   /home/ise/ADLD_6TH/test_dp_sram.v
// Project Name:  ADLD_6TH
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dp_sram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dp_sram;

	// Inputs
	reg clka;
	reg clkb;
	reg [9:0] ada;
	reg [9:0] adb;
	reg [7:0] ina;
	reg [7:0] inb;
	reg ena;
	reg enb;
	reg wea;
	reg web;
	

	// Outputs
	wire [7:0] outa;
	wire [7:0] outb;

	// Instantiate the Unit Under Test (UUT)
	dp_sram uut (
		.clka(clka), 
		.clkb(clkb), 
		.ada(ada), 
		.adb(adb), 
		.ina(ina), 
		.inb(inb), 
		.ena(ena), 
		.enb(enb), 
		.wea(wea), 
		.web(web), 
		.outa(outa), 
		.outb(outb)
		
	);
	
	initial begin
		// Initialize Inputs
		clka = 0;
		clkb = 0;
		/*ada = 0;
		adb = 0;
		ina = 0;
		inb = 0;
		ena = 0;
		enb = 0;
		wea = 0;
		web = 0;
       ra=0;
		 rb=0;*/
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		
		//Write & read from port a and port b
      ada = 10'b0000011111;
		adb = 10'b1111100000;
		ina = 8'b10101010;
		inb = 8'b01010101;
		ena = 1'b1;
		enb = 1'b1;
		wea = 1'b1;
		web = 1'b1;
		
	   #100
		
		ada = 10'b0000011111;
		adb = 10'b1111100000;
		wea = 1'b0;
		web = 1'b0;
		
		//Write in port a and read on port b
      ada = 10'b0000011111;
		//adb = 10'b1111100000;
		ina = 8'b10101011;
		//inb = 8'b01010101;
		ena = 1'b1;
		enb = 1'b1;
		wea = 1'b1;
		#100
	
		
		//ada = 10'b0000011111;
		adb = 10'b000011111;
		web = 1'b0;
		
		//Write in port b and read on port a
      ada = 10'b1111111111;
		//adb = 10'b1111100000;
		ina = 8'b11111111;
		//inb = 8'b01010101;
		ena = 1'b1;
		enb = 1'b1;
		web = 1'b1;
		
		//ada = 10'b0000011111;
		adb = 10'b1111100000;
		wea = 1'b0;
		
      	end
			
			always #20 clka=~clka;
			always #20 clkb=~clkb;
      
endmodule
