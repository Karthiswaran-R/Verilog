// AND gate delay = 2
// NOT gate delay = 1
// OR gate delay = 3

//4x1mux 
module mux4_1(y,i,s0,s1);  //module declaration
input i,s0,s1;   //input declaration
output y;   //output declaration
wire w0,w1,w2,w3,w4,w5;
//Gate declaration
not g1(w0, s0);         // w0 = ~s0;
not g2(w1, s1);         // w1 = ~s1;
and g3(w2, w0, w1, i); // w2 = ~s0 & ~s1 & i0;
and g4(w3, w0, s1, i); // w3 = ~s0 & s1 & i1;
and g5(w4, s0, w1, i); // w4 = s0 & ~s1 & i2;
and g6(w5, s0, s1, i); // w5 = s0 & s1 & i3;
or g7(y, w2, w3, w4, w5); // y = w2 | w3 | w4 | w5;
endmodule
