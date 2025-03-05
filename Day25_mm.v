module param_mux #(parameter WIDTH = 1) (y,a,b,sel);
output [WIDTH-1:0]y;
input [WIDTH-1:0]a;
input [WIDTH-1:0]b;
input sel;
assign y=(sel)?b:a;
endmodule
