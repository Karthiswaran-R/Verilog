//test bench module
module tb_alu_4b;
reg  [3:0] A,B;
reg  [2:0] ALU_Sel;
wire [3:0] ALU_Out;
//module instantiate
ALU dut(.A(A),.B(B),.ALU_Sel(ALU_Sel),.ALU_Out(ALU_Out));
initial
begin
        //test case for addition
        A = 4'b0011; B = 4'b0001; ALU_Sel = 3'b000; #10;
        $display("ADD: A=%b, B=%b, ALU_Out=%b", A, B, ALU_Out);
        //test case for subtraction
        A = 4'b0110; B = 4'b0010; ALU_Sel = 3'b001; #10;
        $display("SUB: A=%b, B=%b, ALU_Out=%b", A, B, ALU_Out);
        //test case for and_gate
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b010; #10;
        $display("AND: A=%b, B=%b, ALU_Out=%b", A, B, ALU_Out);
        //test case for or_gate
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b011; #10;
        $display("OR: A=%b, B=%b, ALU_Out=%b", A, B, ALU_Out);
        //test case for xor_gate
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b100; #10;
        $display("XOR: A=%b, B=%b, ALU_Out=%b", A, B, ALU_Out);
        $finish;
    end
//to generate the waveform
initial
begin
$dumpfile("tb_alu_4b");
$dumpvars(0,tb_alu_4b);
end
endmodule
