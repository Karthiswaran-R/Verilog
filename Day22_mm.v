//module declaration
module uart_tx(clk,reset,tx_start,tx_data,tx,tx_busy);
input wire clk;          //clock
input wire reset;        //reset signal
input wire tx_start;    //start transmission
input wire [7:0] tx_data; //data byte to transmit
output reg tx;          //uart transmit line
output reg tx_busy;       //transmission busy flag
//to set constant values
parameter CLK_FREQ = 50000000; //clock frequency (e.g., 50 MHz)
parameter BAUD_RATE = 9600;    //uart baud rate (e.g., 9600 bps)
localparam BAUD_PERIOD = CLK_FREQ / BAUD_RATE; //to calculate baud period
reg [15:0] baud_counter = 0;
reg [3:0] bit_index = 0;
reg [9:0] shift_reg = 10'b1111111111;
always @(posedge clk or posedge reset) 
begin
if (reset) 
begin
//initial state of uart is high
tx <= 1'b1;
tx_busy <= 1'b0;
baud_counter <= 0;
bit_index <= 0;
shift_reg <= 10'b1111111111;
end 
else 
begin
if (tx_busy) 
begin
if (baud_counter == BAUD_PERIOD - 1) 
begin
baud_counter <= 0;
tx <= shift_reg[0];
shift_reg <= {1'b1,shift_reg[9:1]};
if (bit_index < 9)
bit_index <= bit_index + 1;
else 
begin
bit_index <= 0;
tx_busy <= 1'b0;
end
end 
else
baud_counter <= baud_counter + 1;
end 
else if (tx_start) 
begin
 // Start bit, data, stop bit
shift_reg <= {1'b1,tx_data,1'b0};
tx_busy <= 1'b1;
bit_index <= 0;
baud_counter <= 0;
end
end
end
//end of the module
endmodule
