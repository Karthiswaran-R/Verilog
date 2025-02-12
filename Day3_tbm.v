//4x1mux testbench
module tb_mux4_1;   //module declaration
reg tb_i,tb_s0,tb_s1;
wire tb_y;
mux4_1 dut(.y(tb_y),.i(tb_i),.s0(tb_s0),.s1(tb_s1));   //mux instantiation
initial
begin
	tb_i=1'b0;tb_s0=1'b0;tb_s1=1'b0;     //testcases
	#5 tb_s0=1'b0;tb_s1=1'b1;
  #5 tb_s0=1'b1;tb_s1=1'b0;
  #5 tb_s0=1'b1;tb_s1=1'b1;
	#5 tb_i=1'b1;tb_s0=1'b0;tb_s1=1'b0;
	#5 tb_s0=1'b0;tb_s1=1'b1;
  #5 tb_s0=1'b1;tb_s1=1'b0;
  #5 tb_s0=1'b1;tb_s1=1'b1;
	#25 $finish;
end
initial begin
  $monitor("tb_i=%b      tb_s0=%b     tb_s1=%b      tb_y=%b",tb_i,tb_s0,tb_s1,tb_y);      //monitor the input & output
end
initial begin
  $dumpfile("tb_mux4_1.vcd");      //filename to generate waveform
  $dumpvars(0,tb_mux4_1);        //initial value of waveform 
end
endmodule     //end of the module
