//module declaration
module tb_logic_gates;
// Inputs
reg A, B, C;
// Outputs
wire AND_Out, OR_Out, NAND_Out, NOR_Out, XOR_Out, XNOR_Out;
wire BUF_Out, NOT_Out, BUFIF0_Out, BUFIF1_Out, NOTIF0_Out, NOTIF1_Out;
// main module instantiation 
logic_gates dut1();
    initial begin
        // Display header
        $display("A B C | AND OR NAND NOR XOR XNOR BUF NOT BUFIF0 BUFIF1 NOTIF0 NOTIF1");
        // Monitor all signals
        $monitor("%b %b %b |  %b   %b   %b    %b    %b    %b    %b   %b    %b      %b      %b",
                 A, B, C, AND_Out, OR_Out, NAND_Out, NOR_Out, XOR_Out, XNOR_Out,
                 BUF_Out, NOT_Out, BUFIF0_Out, BUFIF1_Out, NOTIF0_Out, NOTIF1_Out);
        // Test all input combinations
        A = 0; B = 0; C = 0; #10;
        A = 0; B = 1; C = 0; #10;
        A = 1; B = 0; C = 0; #10;
        A = 1; B = 1; C = 0; #10;
        A = 0; B = 0; C = 1; #10;
        A = 0; B = 1; C = 1; #10;
        A = 1; B = 0; C = 1; #10;
        A = 1; B = 1; C = 1; #10;
        $finish;
    end
    initial begin
	    $dumpfile("logicgates.vcd");      
	    $dumpvars(0,logic_gates);
    end
endmodule     //end of the module
