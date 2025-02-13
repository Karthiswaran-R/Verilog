//module declaration
module tb_decoder;
reg tb_i0,tb_i1;
wire tb_y0,tb_y1,tb_y2,tb_y3;
//decoder instantiation
decoder dut1(.y0(tb_y0),.y1(tb_y1),.y2(tb_y2),.y3(tb_y3),.i0(tb_i0),.i1(tb_i1));
//test cases
initial
begin
tb_i0=0;tb_i1=0;
#5 tb_i0=0;tb_i1=1;
#5 tb_i0=1;tb_i1=0;
#5 tb_i0=1;tb_i1=1;
#25 $finish;
end
//to display the output in truth table
initial
begin
$monitor("tb_i0=%b  tb_i1=%b  tb_y0=%b  tb_y1=%b   tb_y2=%b   tb_y3=%b",tb_i0,tb_i1,tb_y0,tb_y1,tb_y2,tb_y3);
end
//to generate a waveform
initial
begin
$dumpfile("tb_decoder.vcd");
$dumpvars(0,tb_decoder);
end 
//end of the module
endmodule
