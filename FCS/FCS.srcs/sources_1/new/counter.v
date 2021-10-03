`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 08:18:43 PM
// Design Name: 
// Module Name: counter
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


module counter( input start, 
                input serialIN, 
                input clk, 
                output done, 
                output hold,
                output wake,
                output SRegIN
    );
    reg r_done,r_hold,r_SRegIN,r_wake;
    reg [32:0] i;
    initial
    begin
        i=0;
    end
    
    assign wake = r_wake;
    assign done = r_done;
    assign hold = r_hold;
    assign SRegIN = r_SRegIN ;
    
    always @(posedge clk)
    begin
        if( (i < 64 || i>1024  ) && start == 0 )    // if start is 0 and the counter counts invalid data size we make hold signal 1
        begin
            r_hold <= 1;
            r_done <= 0;
            r_wake <= 0;
            i<= 0;
        end
        else if( start == 1)        // start is 1 and we need to pass the data
        begin
            r_wake <= 1;
            r_hold <=0;
            r_done <=0;
            r_SRegIN <= serialIN;
            i<=i+1;             // counting the input data bits.
            
        end
        else        //  if start =0 and data size is ok
        begin
            i<=0;
            r_done<=1;      // to make the shift register output the data
            r_hold<=0;      
            r_wake <= 0;    // to reset the shift register (all zeros) for another input

        end
        
    end
    
    
endmodule












