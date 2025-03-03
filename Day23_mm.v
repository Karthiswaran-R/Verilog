module clk_pulse_gen(clk,rst,pulse); //module declaration
input wire clk;    //input cll
input wire rst;    //reset signal
output reg pulse;   //output square wave
reg [23:0] counter; //24-bit counter for slower pulse generation
always @(posedge clk or posedge rst) 
begin
if (rst) 
begin
counter <= 0;
pulse <= 0;
end 
else 
begin
counter <= counter + 1;
if (counter == 24'd50) begin // adjust for desired frequency
pulse <= ~pulse;   //toggle the pulse
counter <= 0;
end
end
end
//end of the module
endmodule
