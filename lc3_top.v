lc3_top(
    input clk,
    input rst
);
    wire [15:0] instruction;
    wire [15:0] current_pc;
    wire [2:0] baser, sr, nzp, sr1, sr2, dr, sr;
    wire [4:0] imm5;
    wire [8:0] PC_offset9;
    wire [5:0] PC_offset6;
    wire [10:0] PC_offset11;
    wire [7:0] trapvect8;
    wire [3:0] opcode;
    wire reg_we, cc_we;
    wire [15:0] read_data1, read_data2, write_data;
    
endmodule