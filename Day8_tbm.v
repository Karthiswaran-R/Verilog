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


//Test Bench JK_Flipflop Module Declartion
module tb_jk_ff;
//Port Declaration
reg j, k, clk;
wire q, qn;
//Module Instantiation
jk_ff dut1(.q(q), .qn(qn), .clk(clk), .j(j), .k(k));
//To Generate clock
initial begin
	clk = 0;
	forever #5 clk = ~clk;
end
//Test Cases
initial begin
	j = 1; k = 0;
	#10 j = 0; k = 1;
	#10 j = 0; k = 0;
	#10 j = 1; k = 1;
	#40 $finish;
end
//To Monitor the input & output
initial begin
$monitor("|  j=%b  |  k=%b  |  q=%b  |  qn=%b  |",j, k, q, qn);
end
//To Generate the Waveform
initial begin
	$dumpfile("tb_jk_ff.vcd");
	$dumpvars(0,tb_jk_ff);
end
endmodule
