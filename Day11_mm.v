//module declaration
module traffic_light_fsm (clk,reset,light); 
//port declaration
input clk,reset;
output reg [1:0] light;
reg [1:0] state, next_state;
//parameter hold the value 
parameter RED=2'b00,GREEN=2'b01,YELLOW=2'b10;
//functionality of the traffic light controller
always@(posedge clk or posedge reset)
begin
if(reset)
state<=RED;
else
state<=next_state;
end
always@(*)begin
case(state)
RED: 
begin
light=2'b00;
next_state=GREEN;
end
GREEN: 
begin
light=2'b01;
next_state=YELLOW;
end
YELLOW:
begin
light=2'b10;
next_state=RED;
end
default:
begin
light=2'b00;
next_state=RED;
end
endcase
end
//end of the module
endmodule
