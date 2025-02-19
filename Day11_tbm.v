//test bench module declaration
module traffic_light_fsm_tb;
//port declaration
reg clk;
reg reset;
wire [1:0] light;
//module instantiation
traffic_light_fsm dut(.clk(clk),.reset(reset),.light(light));
//to generate clock
initial
begin
clk = 0;
forever #5 clk = ~clk;
end
//test cases
initial
begin
reset = 1;
#10;
reset = 0;
#100;
$finish;
end
//to monitor the input & output
initial
begin
$monitor("Time: %0d, Light: %b", $time, light);
end
//to generate the waveform
initial
begin
$dumpfile("traffic_light_fsm_tb.vcd");
$dumpvars(0,traffic_light_fsm_tb);
end
//end of the module
endmodule
