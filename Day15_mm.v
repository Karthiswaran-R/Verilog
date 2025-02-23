//module declaration
module as_4b(A,B,mode,result,carry_out);
//port declaration
input wire [3:0] A;      // 4-bit input A
input wire [3:0] B;      // 4-bit input B
input wire mode;         // Mode selection (0: Add, 1: Subtract)
output wire [3:0] result;// 4-bit result
output wire carry_out;   // Carry/Borrow out
wire [3:0] B_comp;  // Complemented B for subtraction
wire carry_in;      // Carry input
assign B_comp = B ^ {4{mode}}; // XOR with mode for two’s complement
assign carry_in = mode;        // Carry in for subtraction is 1 (two’s complement method)
assign {carry_out, result} = A + B_comp + carry_in; // Perform addition/subtraction
endmodule
