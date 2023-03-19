`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/19 00:27:20
// Design Name: 
// Module Name: adder16
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


module adder16(operand1,operand2,cin,result,cout);
    input [15:0] operand1;//����һ
    input [15:0] operand2;//�����
    input cin;//�����λ
    output [15:0] result;//���
    output cout; //�����λ
    assign {cout,result} = operand1 + operand2 + cin;
endmodule
