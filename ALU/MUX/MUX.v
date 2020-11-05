module MUX(In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, Sel, Out);

input [31:0] In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16;
input [3:0] Sel;
output [31:0] Out;

reg [31:0] Out;

always @*
begin
    case(Sel)
        4b'0000: Out = In1;
        4b'0001: Out = In2;
        4b'0010: Out = In3;
        4b'0011: Out = In4;
        4b'0100: Out = In5;
        4b'0101: Out = In6;
        4b'0110: Out = In7;
        4b'0111: Out = In8;
        4b'1000: Out = In9;
        4b'1001: Out = In10;
        4b'1010: Out = In11;
        4b'1011: Out = In12;
        4b'1100: Out = In13;
        4b'1101: Out = In14;
        4b'1110: Out = In15;
        4b'1111: Out = In16;
        default: 32b'x;
    endcase
end
endmodule