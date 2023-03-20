`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/20 14:14:27
// Design Name: 
// Module Name: testbench
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

module testbench;

 //输入
 reg [31:0] operand1;
 reg [31:0] operand2;
 reg cin;

 //输出
 wire [31:0] result;
 wire cout;
 //调用32位加法器
adder32 uut (
         .operand1(operand1), 
         .operand2(operand2), 
         .cin(cin), 
         .result(result), 
         .cout(cout)
 );
 initial begin
 // 初始化输入
 operand1 = 0;
 operand2 = 0;
 cin = 0;
 #100;// 100ns延时
 end
 always #10 operand1 = $random; //$random 为系统任务，产生一个随机的 32 位数
 always #10 operand2 = $random; //#10 表示等待 10 个单位时间(10ns)，即每过 10ns，赋值一个随机的 32 位数
 always #10 cin = {$random} % 2; //加了拼接符，{$random}产生一个非负数，除 2 取余 得到 0 或 1
 endmodule
