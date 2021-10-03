`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 08:34:01 PM
// Design Name: 
// Module Name: countertb
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


module countertb;

reg start;
reg serialIN;
reg clk;
wire done;
wire hold;
wire SRegIN;

counter C1( start,  serialIN,  clk,  done,  hold,  SRegIN);

always #16 clk =~clk;

initial
begin
    start=0;
    serialIN=0;
    clk=0;
    #16;
    //starting simulation
    //////////////////////Data Size of 64 (Must pass correctly with no error)//////////////////////////// 
    serialIN =0;
    start =1;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;

    start =0;
    
    //////////////////////Data Size of 56 (Must output an error)//////////////////////////// 
    #128;
    serialIN =0;
    start =1;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;    
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    #32 serialIN =0;
    #32 serialIN =1;
    start =0;
    
end

endmodule
