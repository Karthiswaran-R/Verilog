//Module Declaration
module tb_16x1mux;
//Port Declaration
reg [15:0]d;
reg [3:0]s;
wire y;
//Module Instantiation
mux_16x1 dut(.y(y),.d(d),.s(s));
//Test Cases
initial
begin
d=16'b1111_1010_0001_0110; //16bit of input data
s=4'b0000;
#5 s=4'b0001;
#5 s=4'b0010;
#5 s=4'b0011;
#5 s=4'b0100;
#5 s=4'b0101;
#5 s=4'b0110;
#5 s=4'b0111;
#5 s=4'b1000;
#5 s=4'b1001;
#5 s=4'b1010;
#5 s=4'b1011;
#5 s=4'b1100;
#5 s=4'b1101;
#5 s=4'b1110;
#5 s=4'b1111;
#125 $finish;
end 
//to monitor the input & outputs
initial
begin
$monitor("d=%b  |  s=%b  |  y=%b",d,s,y);
end
//To Generate waveform
initial
begin
$dumpfile("tb_mux_16x1.vcd");
$dumpvars(0,tb_16x1mux);
end
//end of the module
endmodule
