//module declaration
module mux_16x1(y,d,s);
//port declaration
input [15:0]d;
input [3:0]s;
output y;
//16x1mux function using dataflow modeling
assign y=(s==4'b0000)?d[0]:
         (s==4'b0001)?d[1]:
         (s==4'b0010)?d[2]:
         (s==4'b0011)?d[3]:
         (s==4'b0100)?d[4]:
         (s==4'b0101)?d[5]:
         (s==4'b0110)?d[6]:
         (s==4'b0111)?d[7]:
         (s==4'b1000)?d[8]:
         (s==4'b1001)?d[9]:
         (s==4'b1010)?d[10]:
         (s==4'b1100)?d[11]:
         (s==4'b1101)?d[12]:
         (s==4'b1110)?d[13]:
         (s==4'b1111)?d[14]:
         d[15];
//end of the module
endmodule
