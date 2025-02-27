//module declaration
module pipe_add(clk,rst,a,b,sum);
//port declaration
input clk;
input rst;
input [7:0]a;
input [7:0]b;
output reg [8:0]sum;
reg [7:0] a_reg, b_reg;
reg [8:0] sum_reg;
//
always @(posedge clk or posedge rst) 
begin
if (rst) //reset the stage
begin
a_reg <= 0;
b_reg <= 0;
sum_reg <= 0;
sum <= 0;
end 
else 
begin
a_reg <= a; //stage1
b_reg <= b;  //stage2
sum_reg <= a_reg + b_reg;  //add two stages
sum <= sum_reg; //output
end
end
//end of the module
endmodule
