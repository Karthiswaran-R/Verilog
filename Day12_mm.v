//module & port declaration
module RAM_4x4(input wire clk,input wire en,input wire [1:0]addr,input wire [3:0]din,output reg [3:0]dout);
reg [3:0] mem [3:0];
integer i;
initial begin
for (i = 0; i < 4; i = i + 1) 
// Initialize memory to zero
mem[i] = 4'b0000;
end
always@(posedge clk) 
begin
if(en)
mem[addr]<=din;
else 
dout<=mem[addr];
end
//end of the module
endmodule
