module pc(
    input clk,
    input rst,
    input [15:0] next_pc,
    input pc_write_enable,
    output reg [15:0] current_pc
);
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            current_pc <= 16'b0; // Reset PC to 0
        end else if (pc_write_enable) begin
            current_pc <= next_pc; // Update PC with next_pc
        end
    end

endmodule