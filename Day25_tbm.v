//testbench module
module tb_param_mux;
parameter WIDTH = 4;
reg [WIDTH-1:0]a,b;
reg sel;
wire [WIDTH-1:0]y;
//module instantiation
param_mux #(.WIDTH(WIDTH)) dut(.y(y),.a(a),.b(b),.sel(sel));
initial 
begin
a=4'b0000;
b=4'b1111;
sel=1'b0;
#10;
sel=1'b1;
#10;
a=4'b1010;
b=4'b0101;
sel=1'b0;
#10;
sel=1'b1;
#10;
$finish;
end
//to monitor the input & output
initial
begin
$monitor("| sel = %b | a = %b | b = %b | y = %b |",sel,a,b,y);
end
//to generate the waveform
initial
begin
$dumpfile("tb_param_mux.vcd");
$dumpvars(0,tb_param_mux);
end
endmodule
