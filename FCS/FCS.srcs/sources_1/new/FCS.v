`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 07:37:47 PM
// Design Name: 
// Module Name: FCS
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


module FCS( input serialIN,
            input start,
            output [15:0] FCS_Out,
            input clk,
            output error);
  wire SR_err;
  wire done;
  wire wake;
  wire SRegIN;
  
  // Instantiating small modules
  counter  C1(  .start(start), 
                .serialIN(serialIN),  
                .clk(clk),  
                .done(done),  
                .hold(SR_err),
                .wake(wake),  
                .SRegIN(SRegIN) );
  // shift register instantiation              
  shiftReg SR1(  .clk(clk),  
                 .reset(SR_err),  
                 .wake(wake),  
                 .dataIN(SRegIN),  
                 .outEN(done), 
                 .error(error),
                 .CRC_out(FCS_Out));
  
endmodule
