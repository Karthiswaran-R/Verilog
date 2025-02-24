//test bench module declaration
module tb_bmux_4x4;
//port declaration
reg [3:0] A,B;
wire [7:0] P;
//module instantiation
bmux_4x4 dut(.A(A), .B(B), .P(P));
//test cases
initial 
begin
A=4'b1011;B=4'b1101; 
#10; // 11 * 13 = 143
A=4'b0011;B=4'b0101; 
#10; // 3 * 5 = 15
A=4'b1111;B=4'b1111; 
#10; // 15 * 15 = 225
A=4'b0001;B=4'b0001; 
#40; // 1 * 1 = 1
$finish;
end
//to monitor the input & output
initial
begin
$monitor("A=%b | B=%b | P=%b",A,B,P);
end
//to generate the waveform
initial
begin
$dumpfile("tb_bmux_4x4.vcd");
$dumpvars(0,tb_bmux_4x4);
end
//end of the module
endmodule
