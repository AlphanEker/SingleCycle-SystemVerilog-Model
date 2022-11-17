`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2022 12:43:37 AM
// Design Name: 
// Module Name: testController
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

                  
module testController();
     logic memtoreg,memwrite,pcsrc,alusrc,regdst,regwrite,jump,jumpsrc,jw;
     logic[2:0] alucontrol;	
    logic[31:0] instr;
    
    controller c(instr[31:26], instr[5:0],
                       1'b0,
                       memtoreg, memwrite,
                      pcsrc, alusrc,
                     regdst, regwrite,
                    jump,
                   alucontrol,
                   jumpsrc, jw);
    initial begin
        instr = 32'h20020005; #30;
        instr = 32'h2003000c; #30;
        instr = 32'h2067fff7; #30;
        instr = 32'h00e22025; #30;
        instr = 32'h00642824; #30;
        instr = 32'h00a42820; #30;
        instr = 32'h10a7000a; #30;
        instr = 32'h0064202a; #30;
        instr = 32'h10800001; #30;
        instr = 32'h20050000; #30;
        instr = 32'h00e2202a; #30;
        instr = 32'h00853820; #30;
        instr = 32'h00e23822; #30;
        instr = 32'hac670044; #30;
        instr = 32'h8c020050; #30;
        instr = 32'h08000011; #30;
        instr = 32'h20020001; #30;
        instr = 32'hac020054; #30;
        instr = 32'h08000012; #30;
    end
endmodule
