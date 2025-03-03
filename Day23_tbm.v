module tb_clk_pulse_gen;   //test bench module declaration
//port declaration
reg clk;      
reg rst;      
wire pulse;
clk_pulse_gen dut(.clk(clk),.rst(rst),.pulse(pulse));
always 
begin
#10 clk = ~clk;
end
initial 
begin
clk = 0;
rst = 0;
rst = 1;
#50;          
rst = 0;
#10000;    
$finish;
end
initial 
begin
$monitor("|time=%0t | reset = %b | pulse = %b",$time,rst,pulse); //to monitor output
end
initial
begin
$dumpfile("tb_clk_pulse_gen.vcd");   //to generate waveform
$dumpvars(0,tb_clk_pulse_gen);
end
endmodule   //end of the module
