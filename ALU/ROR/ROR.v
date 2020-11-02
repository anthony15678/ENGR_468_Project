module ROR(A, N, Result);
input [31:0] A;
input [3:0] N;
output [31:0] Result;
assign Result = (A >> N) | (A << (32-N));
endmodule
