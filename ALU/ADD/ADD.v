module ADD(A, B, Result, Flag, S);	//flags [N, Z, C, V]
input [31:0] A, B;
output [31:0] Result;
output [3:0] Flag;
wire Carry;
assign {Carry,Result} = A + B;
Set_Flag S1(Carry,S);
//assign Flag[1]=S?C:0; //Set flags if Sbit is 1
//assign Flag[3:2]=0;
//assign Flag[0]=0;
endmodule
