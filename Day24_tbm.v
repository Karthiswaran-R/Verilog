module tb_st_4b;     //testbench module declaration
reg clk;                
reg reset;             
reg [3:0] d;             
wire [3:0] q;           
st_4b dut(.clk(clk),.reset(reset),.d(d),.q(q));
initial 
begin
clk = 0;
forever #5 clk = ~clk;  //to generate clock signal
end
initial 
begin
reset = 1;
d = 4'b0000;
#10 reset = 0;
#10 d = 4'b1010;
#10 d = 4'b1100;
#8 reset = 1;
#2 reset = 0;
#10 d = 4'b1111;
#10 d = 4'b0011;
#20 $finish;
end
initial 
begin
$monitor("| time=%0t | reset=%b | d=%b | q=%b |",$time,reset,d,q); //to monitor the input & output
end
initial
begin
$dumpfile("tb_st_4b.vcd"); //to dump the output in a file & generate the waveform
$dumpvars(0,tb_st_4b);
end
endmodule      //end of the module
