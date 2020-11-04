module Test_ROR;
reg [31:0] in1;
reg [3:0] N;
wire [31:0] Result;
wire [3:0] Flag;
wire S;
initial
begin
$display($time, " TestMy Design");
in1=2; N=3;
#10 in1=1; N=3; 
#10 in1=6; N=2; 
#10 in1=5; N=9; 
#10 in1=10; N=10; 
#10 in1=10; N=6; 
end
initial
begin
$monitor($time, " in1.=%d, in2.=%d, Result=%d, Flag=%b", in1, in2, Result, Flag);
end
ROR ror(in1, N, Result,Flag,S);

endmodule

