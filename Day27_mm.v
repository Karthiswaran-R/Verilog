module bit_rev(input [1:0] in,output [1:0] out);   //module declaration
assign out={in[0],in[1]}; //reverse the bits
endmodule   //end of the module
