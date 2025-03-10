//module declaration
module down_count(clk,rst,no);
//port declaration
input clk,rst;
output reg [1:0]no;
always @(posedge clk or posedge rst) begin
    if (rst)
        no <= 2'b11;  
    else
        no <= no + 1;  
end
//end of the module
endmodule
