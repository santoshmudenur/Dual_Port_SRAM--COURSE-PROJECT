`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:09:56 04/09/2022 
// Design Name: 
// Module Name:    dp_sram 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module dp_sram(clka,clkb,ada,adb,ina,inb,ena,enb,wea,web,outa,outb);

input clka,clkb,ena,wea,enb,web;

input[9:0] ada,adb;

input[7:0] ina,inb;

output reg [7:0] outa,outb;

reg [7:0] mem [0:1023];

initial begin

outa = 8'b00000000;

outb = 8'b00000000;

end

//PORT A
always@(posedge clka)
begin
if(ena)
begin

if(wea)
mem[ada]<=ina;
else
outa <= mem[ada];
end

else
outa<= outa;
end

//assign outa=mem[ada];

//PORT B
always@(posedge clkb)
begin

if(enb)
begin
if(web)
mem[adb]<=inb;
else
outb <= mem[adb];
end

else
outb <= outb;

end

//assign outb=mem[adb];
endmodule