//Up_counter test bench module
//test bench module declaration
module tb_up_count;
//port declaration
    reg clk, rst;
    wire [3:0]no;   
    up_count dut(.clk(clk), .rst(rst), .no(no));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #150;
        $finish;
    end
//to monitor the input & output
    initial begin
        $monitor("Up-Counter=%b ", no);
    end
//to generate the waveform
    initial begin
        $dumpfile("count_tb.vcd");
        $dumpvars(0, tb_up_count);
    end
//end of the module
endmodule




//Down_counter test bench module
//test bench module declaration
module tb_down_count;
//port declaration
    reg clk, rst;
    wire [3:0]no;   
    down_count dut(.clk(clk), .rst(rst), .no(no));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
        #150;
        $finish;
    end
//to monitor the input & output
    initial begin
        $monitor("Down-Counter=%b ", no);
    end
//to generate the waveform
    initial begin
        $dumpfile("d_count_tb.vcd");
        $dumpvars(0, tb_down_count);
    end
//end of the module
endmodule
