`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/19 00:27:20
// Design Name: 
// Module Name: adder32
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

`include "adder16.v"

module adder32(operand1,operand2,cin,result,cout);
input [31:0] operand1;//第一个加数
input[31:0] operand2;//第二个加数
input cin;//接收的进位
output [31:0]result;//结果
output cout;//全加器输出
wire low16cout;//接收前16位进位输出
adder16 adder1(operand1[15:0],operand2[15:0],cin,result[15:0],low16cout);//低16位加法
adder16 adder2(operand1[31:16],operand2[31:16],low16cout,result[31:16],cout);//高16位加法
endmodule










