//module & port declaration
module seq(input wire clk,input wire rst,input wire in,output reg det);
reg [1:0] state; // State register
always @(posedge clk or posedge rst) 
begin
if (rst) 
begin
state<=2'b00;  // Initial state
det<=0;
end else begin
det<=0;  
case (state)
2'b00: state<=(in)?2'b01:2'b00;
2'b01: state<=(in)?2'b01:2'b10;
2'b10: state<=(in)?2'b11:2'b00;
2'b11: begin
det<=1;  // Pattern 101 detected
state<=(in)?2'b01:2'b00;
end
default:state<=2'b00;
endcase
end
end
//end of the module
endmodule
