//module declaration
module parity_gc(d,mode,p_in,p_bit,error);
//port declaration
input [3:0]d; //4-bit input data
input mode;  
input p_in;
output p_bit;
output error;
assign p_bit = mode ^ (^d);
assign error = (p_bit != p_in);
//end of the module
endmodule
