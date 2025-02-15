//Test Bench Module_Declaration
module tb_d_ff;
//port declaration
reg d,clk;
wire q;
//Module Instantiation
d_ff dut(.q(q),.d(d),.clk(clk));
//Test Cases
initial begin
	clk=1'b1;
	#5 d=1'b0;
	#5 d=1'b1;
	#10 $finish;
end
//To Monitor the input & output
initial begin
	$monitor("d=%b  |  q=%b",d,q);
end
//To Generate the waveform
initial begin
	$dumpfile("tb_d_ff.vcd");
	$dumpvars(0,tb_d_ff);
end
//End of the Module
endmodule
