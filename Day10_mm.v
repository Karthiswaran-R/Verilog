//Up_counter main module
//module declaration
module up_count(clk,rst,no);
//port declaration
input clk,rst;
output reg [3:0]no;
always @(posedge clk or posedge rst) begin
    if (rst)
        no <= 4'b0000;  
    else
        no <= no + 1;  
end
//end of the module
endmodule


//Down_counter main module
//module declaration
module down_count(clk,rst,no);
//port declaration
input clk,rst;
output reg [3:0]no;
always @(posedge clk or posedge rst) begin
    if (rst)
        no <= 4'b1111;  
    else
        no <= no - 1;  
end
//end of the module
endmodule
