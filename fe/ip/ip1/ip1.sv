module ip1 (
    input clk,
    input rst_n
);

    // Dummy IP
    reg [31:0] data;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data <= 32'h0;
        end else begin
            data <= data + 1;
        end
    end

endmodule
