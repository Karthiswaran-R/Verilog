//half adder module declaration
module halfadder(s,c,a,b);
//input & output declaration
input a,b;
output s,c;
//gate declaration
xor ag1(s,a,b);
and ag2(c,a,b);
//end of the module
endmodule
