//module declaration
module tb_encoder;
//port declaration
reg tb_i0,tb_i1,tb_i2,tb_i3;
wire tb_o1,tb_o2,tb_v;
//module instantiation
encoder dut(.o1(tb_o2),.o2(tb_o1),.v(tb_v),.i0(tb_i0),.i1(tb_i1),.i2(tb_i2),.i3(tb_i3));
//test cases
initial
begin
tb_i0=1'b0;tb_i1=1'b0;tb_i2=1'b0;tb_i3=1'b0;
#5 tb_i0=1'b1;tb_i1=1'b0;tb_i2=1'b0;tb_i3=1'b0;
#5 tb_i0=1'bx;tb_i1=1'b1;tb_i2=1'b0;tb_i3=1'b0;
#5 tb_i0=1'bx;tb_i1=1'bx;tb_i2=1'b1;tb_i3=1'b0;
#5 tb_i0=1'bx;tb_i1=1'bx;tb_i2=1'bx;tb_i3=1'b1;
#25 $finish;
end
//to generate truthtable
initial
begin
$monitor("tb_i0=%b  tb_i1=%b  tb_i2=%b  tb_i3=%b  tb_o1=%b   tb_o2=%b   tb_v=%b",tb_i0,tb_i1,tb_i2,tb_i3,tb_o1,tb_o2,tb_v);
end
//to generate a waveform
initial
begin
$dumpfile("tb_encoder.vcd");
$dumpvars(0,tb_encoder);
end
endmodule
