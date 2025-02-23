module tb_as_4b; //test bench module declaration
//port declaration
reg [3:0] A, B;
reg mode;
wire [3:0] result;
wire carry_out;
//module instantiation 
as_4b dut (.A(A),.B(B),.mode(mode),.result(result),.carry_out(carry_out));
//test cases
initial 
begin
$monitor("A=%b | B=%b | Mode=%b | Result=%b | Carry/Borrow=%b",A,B,mode,result,carry_out);
// Test Addition (Mode = 0)
A = 4'b0011; B = 4'b0101; mode = 0; #10;  // 3 + 5 = 8
A = 4'b1100; B = 4'b0011; mode = 0; #10;  // 12 + 3 = 15
// Test Subtraction (Mode = 1)
A = 4'b0101; B = 4'b0011; mode = 1; #10;  // 5 - 3 = 2
A = 4'b1000; B = 4'b0110; mode = 1; #10;  // 8 - 6 = 2
$finish;
end
//to generate waveform
initial
begin
$dumpfile("tb_as_4b.vcd");
$dumpvars(0,tb_as_4b);
end
endmodule
