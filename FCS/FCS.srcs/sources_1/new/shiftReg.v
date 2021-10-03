`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 08:19:23 PM
// Design Name: 
// Module Name: shiftReg
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


module shiftReg( input clk,
                 input reset,
                 input wake,
                 input dataIN,
                 input outEN,
                 output reg error,
                 output reg [15:0] CRC_out);
    reg [0:15]Remainder;
    reg [15:0] r_CRC;
    initial
    begin
        Remainder <= 16'd0;
    end 
    
    always @(posedge clk)
    begin
        if( wake == 1'b0  )         // Wake is 0 which means that the system is in the idle state
        begin
            Remainder<= 16'd0;
            r_CRC<= 16'd0;
            
        end
        else if(wake == 1'b1)       // if wake signal is 1, the register will start operating 
        begin
            Remainder[15] <= dataIN ^ Remainder[0];
            Remainder[14] <= Remainder[15];
            Remainder[13] <= Remainder[14];
            Remainder[12] <= Remainder[13];
            Remainder[11] <= Remainder[12];
            Remainder[10] <= dataIN ^ Remainder[0] ^ Remainder[11];
            Remainder[9] <= Remainder[10];
            Remainder[8] <= Remainder[9];
            Remainder[7] <= Remainder[8];
            Remainder[6] <= Remainder[7];
            Remainder[5] <= Remainder[6];
            Remainder[4] <= Remainder[5];
            Remainder[3] <= dataIN ^ Remainder[0] ^ Remainder[4];
            Remainder[2] <= Remainder[3];
            Remainder[1] <= Remainder[2];
            Remainder[0] <= Remainder[1];
        end

        if(outEN == 1'b1 )  // enable signal for the output register
        begin
            CRC_out <= Remainder;
            error <=0;      // error is 0 to let the user read the output from the output register (Valid Data)
        end
        else
        begin
            error <=1;
        end

        
    end
    
endmodule










