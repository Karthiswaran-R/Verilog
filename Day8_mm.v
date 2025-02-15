// D_flipflop Module Declaration
module d_ff(q,d,clk);
//port declaration
input d,clk;
output q;
//D Flipflop functionality assign using dataflow modeling
assign q=d;
//End of the module
endmodule
