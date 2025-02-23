//module declaration
module ALU(A,B,ALU_Sel,ALU_Out);
//port declaration
input  [3:0] A, B;  
input  [2:0] ALU_Sel; 
output reg [3:0] ALU_Out;
always @(*)
begin
    case (ALU_Sel)
        3'b000: ALU_Out = A + B;    //to perform addition
        3'b001: ALU_Out = A - B;    //to perform subtraction
        3'b010: ALU_Out = A & B;    //to perform and operation
        3'b011: ALU_Out = A | B;    //to perform or operation
        3'b100: ALU_Out = A ^ B;    //to perform xor operation
        default: ALU_Out = 4'b0000; // Default Case (NOP)
    endcase
end
//end of the module
endmodule
