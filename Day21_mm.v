//main module & port declaration
module sim_coun(input clk,input rst,output reg [3:0] count); // Fixed count width
always @(posedge clk or posedge rst)    // Active-high reset
begin 
if (rst) 
count <= 0;
else 
count <= count + 1;
end
//end of the module
endmodule
