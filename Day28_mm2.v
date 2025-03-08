module hex_2_7seg_st(hex,seg);
input [3:0] hex;    
output [6:0] seg;    
wire a,b,c,d;
assign {d,c,b,a} = hex;
or (seg[0],(b & ~c & ~d),(~a & c & d),(a & ~b & c & ~d),(~a & ~b & ~c & d));
or (seg[1],(~a & ~b & d), (~a & c & d),(a & ~c & d),(a & b & ~d));
or (seg[2],(~a & b & ~c),(a & b & d),(~a & ~b & d));
or (seg[3],(b & ~c & ~d),(~b & c & d), (a & ~b & c),(~a & b & ~c & d));
or (seg[4],(c & ~d),(~b & ~c & d),(a & b & ~c));
or (seg[5],(b & ~c),(~a & ~b & d),(a & c & d),(~a & b & ~d));
or (seg[6],(~a & ~b & ~c),(a & b & ~d),(b & c & d));
endmodule
