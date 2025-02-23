//module & port declaration
module b2g #(parameter width=4)(input wire [width-1:0] b_in,output wire [width-1:0] g_out);
//binary to gray code converting using dataflow modeling
assign g_out = b_in ^ (b_in >> 1);
endmodule
