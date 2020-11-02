module Test_LSR;
reg [31:0] in1;
reg [3:0] N;
wire [31:0] Result;
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
$monitor($time, " 1stnum.=%d, 2ndnum.=%d, Result=%d", in1, N, Result);
end
LSR MUT(in1, N, Result);
// Add MUT(.Sum(Result), .A(in1), .B(in2));
endmodule

