//main module declaration
module fsm_vendmach(clk, reset, coin_5, coin_10, dispense);
//Port declaration
input clk, reset;
input coin_5, coin_10;
output reg dispense;
parameter S0  = 2'b00;
parameter S5  = 2'b01;
parameter S10 = 2'b10;
parameter S15 = 2'b11;
reg [1:0] current_state, next_state;
always @(posedge clk or posedge reset) begin
if (reset)
current_state <= S0;
else
current_state <= next_state;
end  
always @(*) 
begin
case (current_state)
S0: begin
if (coin_5) next_state = S5;
else if (coin_10) next_state = S10;
else next_state = S0;
end
S5: begin
if (coin_5) next_state = S10;
else if (coin_10) next_state = S15;
else next_state = S5;
end
S10: begin
if (coin_5) next_state = S15;
else if (coin_10) next_state = S0;
else next_state = S10;
end
S15: begin
next_state = S0; 
end
default: next_state = S0;
endcase
end
always @(posedge clk) 
begin
if (current_state == S15 && next_state == S0) 
dispense <= 1;
else
dispense <= 0;
end
//end of the module
endmodule
