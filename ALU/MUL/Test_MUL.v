module Test_MUL;
reg [31:0] in1, in2;
wire [31:0] Result;
wire [3:0] Flag;
wire S;
initial
begin

in1=2; in2=3;
#10 in1=1; in2=3; 
#10 in1=6; in2=2; 
#10 in1=5; in2=9; 
#10 in1=10; in2=10; 
#10 in1=10; in2=6; 
end
initial
begin
$monitor($time, " in1.=%d, in2.=%d, Result=%d, Flag=%b", in1, in2, Result, Flag);
end
MUL mul(in1, in2, Result,Flag,S);
// Add MUT(.Sum(Result), .A(in1), .B(in2));
endmodule

