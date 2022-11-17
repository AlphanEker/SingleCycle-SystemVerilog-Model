`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2022 06:37:21 PM
// Design Name: 
// Module Name: test1
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


module test1();
    logic 	 clk, reset;            
    logic[31:0] writedata, dataadr; 
    logic[31:0] pc, instr, readdata;         
    logic memwrite;
    top test(clk, reset, writedata, dataadr, pc, instr, readdata, memwrite);
    initial begin
        clk = 0; reset = 1; #10;
        clk = 1; reset = 1; #10;
        clk = 0; reset = 1; #10;
        clk = 1; reset = 1; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;        
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;        
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;   
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
        clk = 0; reset = 0; #10;
        clk = 1; reset = 0; #10;
    end
endmodule
