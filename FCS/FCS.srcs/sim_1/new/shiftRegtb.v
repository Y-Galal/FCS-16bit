`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2021 03:04:22 PM
// Design Name: 
// Module Name: shiftRegtb
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


module shiftRegtb;
 
    reg clk;
    reg reset;
    reg wake;
    reg dataIN;
    reg outEN;
    wire [15:0] CRC_out;
    shiftReg SR1(  clk,reset, wake, dataIN, outEN,  CRC_out);
    
    always #16 clk =~clk;
    initial
    begin
        reset =1;
        wake =0;
        clk=0;
        dataIN =0;
        outEN=0;
        #16;
        // SIMULATION STARTS HERE
        reset =0;
        wake =1;
        dataIN = 0;
        #32 dataIN = 1;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 0;
        #32 dataIN = 1;
        #32 dataIN = 0;
        #32 dataIN = 1;
        #32 dataIN = 0;
        #32 dataIN = 1;
        #32 dataIN = 1;
        #32 dataIN = 0;
        #32;
        outEN =1;
        wake=0;
        
    end
endmodule
