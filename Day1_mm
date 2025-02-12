module logic_gates;      //module declaration
    // Inputs
    reg A, B, C;
    // Outputs
    wire AND_Out, OR_Out, NAND_Out, NOR_Out, XOR_Out, XNOR_Out;
    wire BUF_Out, NOT_Out, BUFIF0_Out, BUFIF1_Out, NOTIF0_Out, NOTIF1_Out;
    // Basic Gates
    and u1 (AND_Out, A, B);             // AND Gate
    or  u2 (OR_Out, A, B);              // OR Gate
    nand u3 (NAND_Out, A, B);           // NAND Gate
    nor u4 (NOR_Out, A, B);             // NOR Gate
    xor u5 (XOR_Out, A, B);             // XOR Gate
    xnor u6 (XNOR_Out, A, B);           // XNOR Gate
    buf u7 (BUF_Out, A);                // Buffer
    not u8 (NOT_Out, A);                // NOT Gate
    // Tristate Gates
    bufif0 u9 (BUFIF0_Out, A, C);       // Bufif0
    bufif1 u10 (BUFIF1_Out, A, C);      // Bufif1
    notif0 u11 (NOTIF0_Out, A, C);      // NOTif0
    notif1 u12 (NOTIF1_Out, A, C);      // NOTif1
endmodule    //end of the module
