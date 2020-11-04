module ADD(In1, In2, Result,Flag,S,New_Flag);	//[N, Z, C, V}]
input [31:0] In1, In2;
input S;
input [3:0] Flag;
output [31:0] Result;
output [3:0] New_Flag;
wire Carry;
assign {Carry,Result} = In1 + In2;
//Flag assignments
SET_FLAG(In1, In2, Result,Flag,S,New_Flag,Carry)
endmodule
