//test bench module declaration
module tb_pipe_add;
//port declaration
reg clk;
reg rst;
reg [7:0] a, b;
wire [8:0] sum;
//module instantiation
pipe_add dut(.clk(clk),.rst(rst),.a(a),.b(b),.sum(sum));
always #5 clk = ~clk;
//test cases
initial 
begin
clk = 0;
rst = 1;
#10 rst = 0;
a = 8'd10; b = 8'd20;
#10 a = 8'd15; b = 8'd25;
#10 a = 8'd30; b = 8'd40;
#10 a = 8'd50; b = 8'd60;
#20;
$finish;
end
//to monitor the input & outputs
initial
begin
$monitor("| a=%d | b=%d | sum=%d |",a,b,sum);
end
//to generate waveform
initial
begin
$dumpfile("tb_pipe_add.vcd");
$dumpvars(0,tb_pipe_add);
end
endmodule
