//test bench module declaration
module tb_seq;
//port declaration
reg clk;
reg rst;
reg in;
wire det;
//module instantiation
seq dut(.clk(clk),.rst(rst),.in(in),.det(det));
//to generate a clock
initial 
begin
clk = 0;
forever #5 clk = ~clk; 
end
//test cases
initial 
begin
rst = 1; in = 0;
#15 rst = 0;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 in = 0;
#10 in = 1;
#10 $finish;
end
//to monitor the input & output
initial 
begin
$monitor("time = %0t | input = %b | detected = %b", $time, in, det);
end
//to generate the waveform
initial
begin
$dumpfile("tb_seq.vcd");
$dumpvars(0,tb_seq);
end
//end of the module
endmodule
