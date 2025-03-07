module tb_bit_rev;   //test bench module declaration
reg [1:0]in;
wire [1:0]out;
bit_rev dut(.in(in),.out(out));     //instantiation declaration
//test cases
initial 
begin
in=2'b00; #10;
in=2'b01; #10;
in=2'b10; #10;
in=2'b11; #10;
$finish;
end
initial
begin
$monitor("Time=%0d,Input=%b,Output=%b",$time,in,out);
end
initial
begin
$dumpfile("tb_bit_rev");
$dumpvars(0,tb_bit_rev);
end
endmodule
