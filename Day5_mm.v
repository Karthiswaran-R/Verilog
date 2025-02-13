//module declaration
module encoder(o1,o2,v,i0,i1,i2,i3);
//input & output declaration
input i0,i1,i2,i3;
output o1,o2,v;
wire w1,w2;
//gate declaration
not g1(w1,i2);
and g2(w2,w1,i1);
or g3(o1,w2,i3);
or g4(o2,i2,i3);
or g5(v,i0,i1,o2);
//end of the module
endmodule
