`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2021 04:13:07 PM
// Design Name: 
// Module Name: FCS_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FCS_tb;
reg serialIN;
reg start;
wire [15:0]FCS_Out;
reg clk;
wire error;
FCS F1(  serialIN, start,  FCS_Out, clk,error);

always #16 clk =~clk;

initial 
begin
    serialIN=0;
    start=0;
    clk=0;
    #16; #16 #16
    /////// input 0x DAB1 4521 1352 3075 (64 bits) ////////////
    ////// expected output is 0xFD0A ////////////////
    start=1;
    #32 serialIN= 1;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 1;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 serialIN= 0;
    #32 serialIN= 1;
    #32 start =0;
    
/////////// Wrong data size (24) ///////////////
////////// no output but the internal remainder register will have a right data /////
    #128;
    start =1;
    serialIN = 0;
    #32 serialIN = 1;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 0;
    #32 serialIN = 1;
    #32 serialIN = 0;
    #32 serialIN = 1;
    #32 serialIN = 0;
    #32 serialIN = 1;
    #32 serialIN = 1;
    #32 serialIN = 0;
    #32 start=0;
end

endmodule









