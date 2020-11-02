module Test_CMP;
reg [31:0] in1, in2;
wire [31:0] Result;
wire [3:0] Flag;
initial
begin
$display($time, " TestMy Design");
in1=2; in2=3;
#10 in1=1; in2=3;
#10 in1=6; in2=2;
#10 in1=5; in2=9;
#10 in1=10; in2=10;
#10 in1=12; in2=16;
end
initial
begin
$monitor($time, " 1stnum.=%d, 2ndnum.=%d, Flag=%b", in1, in2, Flag);
end
CMP cmp(in1, in2, Result,Flag); 

endmodule

