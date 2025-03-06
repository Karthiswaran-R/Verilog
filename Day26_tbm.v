module tb_cwe;   //test bench module
reg clk;
reg reset;
reg enable;
wire [3:0] count;
cwe dut(.clk(clk),.reset(reset),.enable(enable),.count(count));   //module instantiation
always #10 clk = ~clk;
initial 
begin
clk = 0;
reset = 0;
enable = 0;
$display("Applying reset");
reset = 1;
#20;
reset = 0;
$display("Enable counting");
enable = 1;
#100;
$display("Disable counting");
enable = 0;
#50;
$display("Re-enable counting");
enable = 1;
#50;
$display("Apply reset during counting");
reset = 1;
#20;
reset = 0;
#50;
$finish;
end
initial 
begin
$monitor("| time=%0t | reset=%b | enable=%b | count=%b |",$time,reset,enable,count);   //to monitor the input & output
end
initial
begin
$dumpfile("tb_cwe.vcd");
$dumpvars(0,tb_cwe);
end
endmodule    //end of the module
