//Test Bench Module Declaration
module tb_shift_reg;
//Port Declaration
reg [3:0]s_in;
reg clk,clr;
wire q0,q1,q2,q3;
//Module Instantiation
shift_reg dut(.q0(q0),.q1(q1),.q2(q2),.q3(q3),.s_in(s_in),.clr(clr),.clk(clk));
//To generate clock
initial begin
clk=0;
forever #5 clk = ~clk;
end
//Test Cases
initial begin
clr=1'b1;
s_in = 4'b0000;
#10 s_in = 4'b0001;
#10 s_in = 4'b0010;
#10 s_in = 4'b1010;
#40 $finish;
end
//To Monitor input & output
initial begin 
$monitor("s_in=%b  |  q0=%b  |  q1=%b  |  q2=%b  |  q3=%b", s_in, q0, q1, q2, q3);
end
//To generate waveform
initial begin
$dumpfile("tb_shift_reg.vcd");
$dumpvars(0,tb_shift_reg);
end
endmodule 
