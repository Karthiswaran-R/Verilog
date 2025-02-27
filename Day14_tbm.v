//test bench module declaration
module tb_b2g;
//port declaration
    parameter width=4;
    reg [width-1:0] b_in;
    wire [width-1:0] g_out;
//module instantiation
b2g #(.width(width)) dut (.b_in(b_in),.g_out(g_out));
//test case using for loop
initial 
begin
$display("Binary | Gray Code");
for(b_in = 4'b0000; b_in <= 4'b1111; b_in = b_in + 1) 
begin
#10;
$display("   %b   |   %b", b_in,g_out);
if(b_in==4'b1111)
$finish;
end
end
//to generate waveform
initial 
begin
$dumpfile("tb_b2g.vcd");
$dumpvars(0,tb_b2g);
end
endmodule
