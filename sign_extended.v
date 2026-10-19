module sign_extended(
    input [4:0] imm5,
    output wire [15:0] extended_value
);

    assign extended_value = {{11{imm5[4]}}, imm5};

endmodule