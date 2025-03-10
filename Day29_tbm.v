//test bench module declaration
module tb_down_count;
//port declaration
reg clk, rst;
wire [1:0]no;   
down_count dut(.clk(clk),.rst(rst),.no(no));
always #5 clk = ~clk;
initial 
begin
clk = 0;
rst = 1;
#10 rst = 0;
#150;
$finish;
end
//to monitor the input & output
initial 
begin
$monitor("Counter=%b ", no);
end
//to generate the waveform
initial 
begin
$dumpfile("d_count_tb.vcd");
$dumpvars(0, tb_down_count);
end
//end of the module
endmodule
