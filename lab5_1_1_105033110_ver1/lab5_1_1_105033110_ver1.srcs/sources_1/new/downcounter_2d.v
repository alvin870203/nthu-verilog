`timescale 1ns / 1ps
`include "global.v"
module downcounter_2d(
  // {digit1},{digit0}
  digit1,  // 2nd (tens) digit of the down counter
  digit0,  // 1st (units) digit of the down counter
  clk,  // global clock
  rst,  // high active reset from push button
  en // enable/disable for the stopwatch
);

output [`BCD_BIT_WIDTH-1:0] digit1; // 2nd digit of the down counter
output [`BCD_BIT_WIDTH-1:0] digit0; // 1st digit of the down counter

input clk;  // global clock
input rst;  // high active reset from push button
input en; // enable/disable for the stopwatch

wire br0,br1; // borrow indicator 
wire decrease_enable;
wire rst_00; // high active reset when count to 00

assign decrease_enable = en;
assign rst_00 = (digit0==`BCD_ZERO)&&(digit1==`BCD_ZERO);
  
// 30 sec down counter
downcounter Udc0(
  .value(digit0),  // counter value 
  .borrow(br0),  // borrow indicator for counter to next stage
  .clk(clk), // global clock signal
  .rst(rst),  // high active reset
  .rst_00(rst_00), // high active reset when count to 00
  .decrease(decrease_enable),  // decrease input from previous stage of counter
  .init_value(`BCD_ZERO),  // initial value for the counter
  .limit(`BCD_NINE)  // limit for the counter
);

downcounter Udc1(
  .value(digit1),  // counter value 
  .borrow(br1),  // borrow indicator for counter to next stage
  .clk(clk), // global clock signal
  .rst(rst),  // high active reset
  .rst_00(rst_00), // high active reset when count to 00
  .decrease(br0),  // decrease input from previous stage of counter
  .init_value(`BCD_THREE),  // initial value for the counter
  .limit(`BCD_FIVE)  // limit for the counter
);

endmodule
