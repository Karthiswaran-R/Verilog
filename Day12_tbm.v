//test bench module declaration
module tb_RAM_4x4;
reg clk;
reg en;
reg [1:0]addr;
reg [3:0]din;
wire [3:0]dout;
RAM_4x4 dut(.clk(clk),.en(en),.addr(addr),.din(din),.dout(dout));
//test cases
always #5 clk=~clk;
initial 
begin
clk=0;
en=0;
addr=0;
din=0;
//write operations
#10 en=1'b1;addr=2'b00;din=4'b1010;
#10 en=1'b1;addr=2'b01;din=4'b1100;
#10 en=1'b1;addr=2'b10;din=4'b0101;
#10 en=1'b1;addr=2'b11;din=4'b1111;
//read operations
#10 en=1'b0;addr=2'b00;
#10 en=1'b0;addr=2'b01;
#10 en=1'b0;addr=2'b10;
#10 en=1'b0;addr=2'b11;
#20 $finish;
end
//to monitor the input & output
initial 
begin
$monitor("en=%b | addr=%b | din=%b | dout=%b",en,addr,din,dout);
end
//to generate waveform
initial
begin
$dumpfile("tb_RAM_4x4.vcd");
$dumpvars(0,tb_RAM_4x4);
end
//end of the module
endmodule
