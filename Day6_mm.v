//module declaration
module comp(y1,y2,y3,a,b);
//port declaration
input a,b;
output y1,y2,y3;
wire w1,w2;
//gate declaration
not g1(w1,a);
not g2(w2,b);
xor g3(y1,a,b);
and g4(y2,w2,a);
and g5(y3,w1,b);
//end of the module
endmodule
