module led_blinker(clk,rst,led);
input wire clk;   
input wire rst;    
output reg led;    
reg [3:0] count; 
always @(posedge clk or posedge rst) 
begin
if (rst) 
begin
count<=4'b0000;
led<=1'b0;
end else begin
if (count==4'b1000) 
begin
led<=~led;
count<=4'b0000;
end 
else 
begin
count<=count+1'b1;
end
end
end
endmodule
