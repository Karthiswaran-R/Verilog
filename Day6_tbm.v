//module declaration
module tb_comp;
//port declaration
reg tb_a,tb_b;
wire tb_y1,tb_y2,tb_y3;
//module instantiation
comp dut(.y1(tb_y1),.y2(tb_y2),.y3(tb_y3),.a(tb_a),.b(tb_b));
//test cases
initial
begin
tb_a=1'b0;tb_b=1'b0;
#5 tb_a=1'b0;tb_b=1'b1;
#5 tb_a=1'b1;tb_b=1'b0;
#5 tb_a=1'b1;tb_b=1'b1;
#25 $finish;
end
//to monitor the input & output
initial
begin
$monitor("tb_a=%b   tb_b=%b   tb_y1=%b    tb_y2=%b    tb_y3=%b ",tb_a,tb_b,tb_y1,tb_y2,tb_y3);
end
//to generate waveform
initial
begin
$dumpfile("tb_comp.vcd");
$dumpvars(0,tb_comp);
end
//end of the module
endmodule
