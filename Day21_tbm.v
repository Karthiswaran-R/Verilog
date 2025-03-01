//test bench module declaration
module tb_sim_coun;
//port declaration
reg clk;
reg rst;
wire [3:0] count;
// main module instantiation
sim_coun dut (.clk(clk),.rst(rst),.count(count));
always #5 clk = ~clk;
//test cases
initial 
begin
clk = 0;
rst = 1;
#10;
rst = 0;
#100;
rst = 1;
#10;
rst = 0;
#50;
//finish simulation
$finish;
end
//to monitor output
initial 
begin
$monitor("| rst = %b | count = %d",rst,count);
end
//to generate the waveform
initial
begin
$dumpfile("tb_sim_coun.vcd");
$dumpvars(0,tb_sim_coun);
end
//end of the module
endmodule
