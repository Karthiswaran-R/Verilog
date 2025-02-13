//module declaration
module decoder (y0,y1,y2,y3,i0,i1);
//input & output declaration
input i0,i1;
output y0,y1,y2,y3;
wire w0,w1;
//gate declaration
not g1(w0,i0);
not g2(w1,i1);
and g3(y0,w0,w1);
and g4(y1,w0,i1);
and g5(y2,i0,w1);
and g6(y3,i0,i1);
//end of the module
endmodule
