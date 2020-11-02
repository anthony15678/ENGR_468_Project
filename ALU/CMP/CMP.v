module CMP(A, B, Result, Flag); //[N, Z, C, V}]
input [31:0] A;
input [31:0] B;
output [31:0] Result;
output [3:0] Flag;
wire Carry;
//assign Flag[2]= A>B?0:0;
assign Flag[1]= A<B?1:0;
assign Flag[2]= (A==B)?1:0;
assign Flag[3]=0;
assign Flag[0]=0;
endmodule
