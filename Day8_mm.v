// D_flipflop Module Declaration
module d_ff(q,d,clk);
//port declaration
input d,clk;
output q;
//D Flipflop functionality assign using dataflow modeling
assign q=d;
//End of the module
endmodule


//JK_Flipflop Module Declaration
module jk_ff(q, qn, clk, j, k);
//Port Declaration
input clk, j, k;
output reg q, qn;
always @(posedge clk) begin
if (j == 0 && k == 0) begin
q <= q; // No change
qn <= qn;
end 
else if (j == 0 && k == 1) begin
q <= 0; // Reset
qn <= 1;
end 
else if (j == 1 && k == 0) begin
q <= 1; // Set
qn <= 0;
end 
else if (j == 1 && k == 1) begin
q <= ~q; // Toggle
qn <= ~qn;
end
end
//End of the module
endmodule
