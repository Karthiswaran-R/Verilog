//module declaration
module bmux_4x4(A,B,P);
//port declaration
input  [3:0] A;  // multiplicand
input  [3:0] B;  // multiplier
output reg [7:0] P;  // 8-bit output
reg [3:0] multi1;
reg [3:0] mltpy;
reg [7:0] prd;
integer i;
    always@(A,B) 
     begin
        prd=8'b0; 
        multi1=A;
        mltpy=B;
        for(i=0;i<4;i=i+1) 
begin
            if (mltpy[0])     // Check LSB of multiplier
                prd=prd+(multi1<<i);    // Shift and add
            mltpy = mltpy>> 1;   // Shift multiplier right
        end
        P=prd; // assign result to output
    end
endmodule     //end of the module
