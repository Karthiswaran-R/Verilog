//test bench module declaration
module tb_fsm_vendmach;
reg clk, reset, coin_5, coin_10;
wire dispense;
//module instantiation
fsm_vendmach dut(.clk(clk),.reset(reset),.coin_5(coin_5),.coin_10(coin_10),.dispense(dispense));
//test cases
always #5 clk = ~clk;
initial 
begin
clk = 0;reset = 1;coin_5 = 0;coin_10 = 0;
#10 reset = 0;
#10 coin_5 = 1;#10 coin_5 = 0;     // Insert 5
#10 coin_10 = 1;#10 coin_10 = 0;   // Insert 10
#10 coin_5 = 1;#10 coin_5 = 0;     // Insert 5
#10 coin_5 = 1;#10 coin_5 = 0;    // Insert 5
#10 coin_5 = 1;#10 coin_5 = 0;   // Insert 5 (should dispense)
#20 $finish;
end
//to monitor the input & output
initial
begin
$monitor("| clk=%b | reset=%b | coin_5=%b | coin_10=%b | dispense=%b |",clk,reset,coin_5,coin_10,dispense);
end
//to generate waveform
initial
begin
$dumpfile("tb_fsm_vendmach.vcd");
$dumpvars(0,tb_fsm_vendmach);
end
endmodule
