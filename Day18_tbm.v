//test bench module declaration
module tb_parity_gc;
reg [3:0]d;
reg mode;
reg p_in;
wire p_bit;
wire error;
parity_gc dut(.d(d),.mode(mode),.p_in(p_in),.p_bit(p_bit),.error(error));
//test cases
initial 
begin
d=4'b1011;mode=0;p_in=1; 
#10;
d=4'b1100;mode=0;p_in=0; 
#10;
d=4'b0111;mode=1;p_in=0; 
#10;
d=4'b1001;mode=1;p_in=1; 
#10 $finish;
end
//to monitor the input and output
initial
begin
$monitor("| d=%b | mode=%b | p_in=%b | p_bit=%b | error=%b |",d,mode,p_in,p_bit,error);
end
//to generate the waveform
initial
begin
$dumpfile("tb_parity_gc.vcd");
$dumpvars(0,tb_parity_gc);
end
//end of the module
endmodule
