//testbench module declaration
module tb_led_blinker;
reg clk;
reg rst;
wire led;
wire [3:0]count;
//module instantiation
led_blinker dut(.clk(clk), .rst(rst), .led(led));
//to generate clock
initial 
begin
clk = 0;
forever #10 clk = ~clk;
end
initial 
begin
rst = 1;
#50 rst = 0;
#1000 $finish;
end
//monitor input & output
initial
begin
$monitor("| Time : %t | Clock : %b | Rst : %b | LED : %b |", $time,clk, rst, led);
end
//to generate waveform
initial
begin
$dumpfile("tb_led_blinker.vcd");
$dumpvars(0, tb_led_blinker);
end
endmodule
