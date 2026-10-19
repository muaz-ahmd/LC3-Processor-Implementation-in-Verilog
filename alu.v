module alu(
    input [15:0] a,
    input [15:0] b,
    input [3:0] opcode,
    output reg [15:0] result
);

    always @(*) begin
        case (opcode)
            4'b0001: result = a + b; // ADD
            4'b0101: result = a & b; // AND
            4'b1001: result = ~a;    // NOT
            default: result = 16'b0; // Default case
        endcase
    end
endmodule