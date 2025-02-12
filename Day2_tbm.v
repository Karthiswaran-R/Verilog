//testbench for half adder
module tb_halfadder(); //module declaration
reg t_a,t_b;    //port declaration
wire t_s,t_c;    //port declaration
halfadder hf1(.s(t_s),.c(t_c),.a(t_a),.b(t_b));   //module instantiation
initial begin    
t_a=0;t_b=0;      //testcases
#5 t_a=0;t_b=1;
#5 t_a=1;t_b=0;
#5 t_a=1;t_b=1;
#25 $finish;
end
initial begin
$monitor("t_a=%b  t_b=%b   t_s=%b  t_c=%b",t_a,t_b,t_s,t_c);   //To display the testcase output
end
initial begin        //waveform declaration
$dumpfile("tb_halfadder.vcd");    
$dumpvars(0,tb_halfadder);
end
endmodule   //end of the module


//testbench for full adder
module tb_fulladder(); //module declaration
reg t_a,t_b,t_c;    //port declaration
wire t_so,t_co;    //port declaration
fulladder fa(.so(t_so),.co(t_co),.a(t_a),.b(t_b),.c(t_c));   //module instantiation
initial begin    
t_a=0;t_b=0;t_c=0;      //testcases
#5 t_a=0;t_b=0;t_c=1;
#5 t_a=0;t_b=1;t_c=0;
#5 t_a=0;t_b=1;t_c=1;
#5 t_a=1;t_b=0;t_c=0;
#5 t_a=1;t_b=0;t_c=1;
#5 t_a=1;t_b=1;t_c=0;
#5 t_a=1;t_b=1;t_c=1;
#25 $finish;
end
initial begin
$monitor("t_a=%b  t_b=%b  t_c=%b  t_s=%b  t_c=%b",t_a,t_b,t_c,t_so,t_co);   //To monitor & display the testcase output
end
initial begin        //waveform declaration
$dumpfile("tb_fulladder.vcd");    
$dumpvars(0,tb_fulladder);
end
endmodule   //end of the module
