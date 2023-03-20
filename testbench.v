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

 //����
 reg [31:0] operand1;
 reg [31:0] operand2;
 reg cin;

 //���
 wire [31:0] result;
 wire cout;
 //����32λ�ӷ���
adder32 uut (
         .operand1(operand1), 
         .operand2(operand2), 
         .cin(cin), 
         .result(result), 
         .cout(cout)
 );
 initial begin
 // ��ʼ������
 operand1 = 0;
 operand2 = 0;
 cin = 0;
 #100;// 100ns��ʱ
 end
 always #10 operand1 = $random; //$random Ϊϵͳ���񣬲���һ������� 32 λ��
 always #10 operand2 = $random; //#10 ��ʾ�ȴ� 10 ����λʱ��(10ns)����ÿ�� 10ns����ֵһ������� 32 λ��
 always #10 cin = {$random} % 2; //����ƴ�ӷ���{$random}����һ���Ǹ������� 2 ȡ�� �õ� 0 �� 1
 endmodule
