module tb_hex_2_7seg;reg [3:0] hex;
wire [6:0] seg_b;
wire [6:0] seg_s;
// Instantiate the Behavioral module
hex_2_7seg dut (.hex(hex),.seg(seg_b));
hex_2_7seg_st dut1 (.hex(hex),.seg(seg_s));
initial 
begin
$monitor("| Time=%0t | hex=%h | seg_b=%b | seg_s=%b |", $time, hex, seg_b, seg_s);
    hex = 4'h0; #10;
    hex = 4'h1; #10;
    hex = 4'h2; #10;
    hex = 4'h3; #10;
    hex = 4'h4; #10;
    hex = 4'h5; #10;
    hex = 4'h6; #10;
    hex = 4'h7; #10;
    hex = 4'h8; #10;
    hex = 4'h9; #10;
    hex = 4'hA; #10;
    hex = 4'hB; #10;
    hex = 4'hC; #10;
    hex = 4'hD; #10;
    hex = 4'hE; #10;
    hex = 4'hF; #10;
    $finish;
end
initial 
begin
    $dumpfile("tb_hex_2_7seg.vcd");
    $dumpvars(0, tb_hex_2_7seg);
end
endmodule
