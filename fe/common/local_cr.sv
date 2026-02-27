module local_cr (
    input clk_in,
    input rst_n_in,
    input clk_enable,

    output clk_out,
    output rst_n_out
);

    reg rst_n_local;

    // Reset generation
    always @(posedge clk_in or negedge rst_n_in) begin
        if (!rst_n_in) begin
            rst_n_local <= 1'b0;
        end else begin
            rst_n_local <= 1'b1;
        end
    end

    assign rst_n_out = rst_n_local;

    // Clock gating
    assign clk_out = clk_in & clk_enable;

endmodule
