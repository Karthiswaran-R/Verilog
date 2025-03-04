module st_4b(clk,reset,d,q);   //module declaration
input clk;              //clock signal
input reset;            //reset signal
input [3:0] d;          //4-bit data input
output reg [3:0] q;      //4-bit data output
always @(posedge clk or posedge reset) 
begin
if (reset) 
q <= 4'b0000;       
else 
q <= d;            
end
endmodule    //end of the module
