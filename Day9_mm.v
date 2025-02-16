//Module Decalaration
module shift_reg(q0,q1,q2,q3,s_in,clr,clk);
//Port Declaration
input [3:0]s_in;
input clr,clk;
output reg q0,q1,q2,q3;
always @ (posedge clk) begin
if(clr==1) begin
q0=s_in[0];
end
if(clr==1) begin
q1=s_in[1];
end
if(clr==1) begin
q2=s_in[2];
end
if(clr==1) begin
q3=s_in[3];
end
end
endmodule
