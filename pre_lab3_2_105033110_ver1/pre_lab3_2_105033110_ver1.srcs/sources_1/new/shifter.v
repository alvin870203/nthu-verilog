`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/21 02:05:33
// Design Name: 
// Module Name: shifter
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


module shifter(q, clk, rst_n);
output [7:0] q;
input clk;
input rst_n;
reg [7:0] q;

always @(posedge clk or negedge rst_n)
  if (~rst_n)
  begin
    q<=8'b0101_0101;
  end
  else
  begin
    q[0]<=q[7];
    q[1]<=q[0];
    q[2]<=q[1];
    q[3]<=q[2];
    q[4]<=q[3];
    q[5]<=q[4];
    q[6]<=q[5];
    q[7]<=q[6];
  end

endmodule
