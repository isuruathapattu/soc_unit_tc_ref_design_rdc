module subsystem1 (
    input clk,
    input rst_n,
    input clk_enable
);

    wire local_clk;
    wire local_rst_n;

    local_cr local_cr_inst (
        .clk_in(clk),
        .rst_n_in(rst_n),
        .clk_enable(clk_enable),
        .clk_out(local_clk),
        .rst_n_out(local_rst_n)
    );

    ip1 ip1_inst (
        .clk(local_clk),
        .rst_n(local_rst_n)
    );

endmodule
