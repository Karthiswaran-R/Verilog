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
//full adder module declaration
module fulladder(so,co,a,b,c);
//input & output declaration
input a,b,c;
output so,co;
wire x1,x2;
//gate declaration
xor ag1(so,a,b,c);
and ag2(x1,a,b);
and ag3(x2,b,c);
and ag4(x3,c,a);
or ag5(co,x1,x2,x3);
//end of the module
endmodule
