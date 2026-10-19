module instr_decoder(
    input [15:0] instruction,
    output reg [3:0] opcode,
    output reg [2:0] sr2,
    output reg [2:0] sr1,
    output reg [2:0] dr,
    output reg [2:0] baser,
    output reg [2:0] sr,
    output reg [4:0] imm5,
    output reg [2:0] nzp,
    output reg [8:0] PC_offset9,
    output reg [5:0] PC_offset6,
    output reg [10:0] PC_offset11,
    output reg [7:0] trapvect8,
    output reg reg_we,
    output reg cc_we    
);

    always @(*) begin
        opcode = instruction[15:12];
        sr2 = instruction[2:0];
        sr1 = instruction[8:6];
        dr = instruction[11:9];
        baser = instruction[8:6];
        sr = instruction[11:9];
        imm5 = instruction[4:0];
        nzp = instruction[10:8];
        PC_offset9 = instruction[8:0];
        PC_offset6 = instruction[5:0];
        PC_offset11 = instruction[10:0];
        trapvect8 = instruction[7:0];
        reg_we = 1'b0;
        cc_we  = 1'b0;
        case (opcode)
            4'b0001, // ADD
            4'b0101, // AND
            4'b1001, // NOT
            4'b0010, // LD
            4'b0110, // LDR
            4'b1010, // LDI
            4'b1110: // LEA
            begin
                reg_we = 1'b1;
                cc_we  = 1'b1;
            end

            4'b0100, // JSR/JSRR
            4'b1111: // TRAP
                reg_we = 1'b1;

            default: begin
                reg_we = 1'b0;
                cc_we  = 1'b0;
            end
        endcase
    end

endmodule