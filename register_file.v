module register_file(
    input clk,
    input rst,
    input read_enable,
    input [2:0] read_reg1,
    input [2:0] read_reg2,
    input [2:0] write_reg,
    input [15:0] write_data,
    input write_enable,
    output reg [15:0] read_data1,
    output reg [15:0] read_data2
);

    reg [15:0] registers [0:7]; // 8 registers of 16 bits each

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            integer i;
            for (i = 0; i < 8; i = i + 1) begin
                registers[i] <= 16'b0;
            end
        end else if (write_enable) begin
            // Write data to the specified register
            registers[write_reg] <= write_data;
        end
    end

    always @(*) begin
        if (read_enable) begin
            read_data1 = registers[read_reg1];
            read_data2 = registers[read_reg2];
        end else begin
            read_data1 = 16'b0;
            read_data2 = 16'b0;
        end
    end
endmodule