//test bench module
module tb_uart_tx;
//port declaration
reg clk;
reg reset;
reg tx_start;
reg [7:0] tx_data;
wire tx;
wire tx_busy;
parameter CLK_FREQ = 50000000; // 50 MHz
parameter BAUD_RATE = 9600;
localparam BAUD_PERIOD = CLK_FREQ / BAUD_RATE;
//module instantiation
uart_tx dut(.clk(clk),.reset(reset),.tx_start(tx_start),.tx_data(tx_data),.tx(tx),.tx_busy(tx_busy));
//generate clock
initial 
begin
clk = 0;
forever #10 clk = ~clk; // 50 MHz clock
end
//test cases
initial 
begin
reset = 1;
tx_start = 0;
tx_data = 8'h00;
#50;
reset = 0;
#50;
//example data: 8'b10100101
tx_data = 8'hA5; 
tx_start = 1;
#20;
tx_start = 0;
//wait for transmission to complete
wait (~tx_busy);
//send another byte
#50;
tx_data = 8'h3C; // Example data: 0b00111100
tx_start = 1;
#20;
tx_start = 0;
//wait for the second transmission to complete
wait (~tx_busy);
#100;
$stop;
end
//to monitor the output
initial
begin
$monitor("| reset=%b | start=%b | data=%b | tx=%b | busy=%b |",reset,tx_start,tx_data,tx,tx_busy);
end
//to generate waveform
initial
begin
$dumpfile("tb_uart_tx.vcd");
$dumpvars(0,tb_uart_tx);
end
//end of the module
endmodule
