module proc_subsystem (
    input clk_pll1,
    input clk_pll2,
    input rst_n,

    output clk_ss1,
    output rst_n_ss1,

    output clk_ss2,
    output rst_n_ss2,

    output clk_ss3,
    output rst_n_ss3
);

    cr cr_inst (
        .clk_pll1(clk_pll1),
        .clk_pll2(clk_pll2),
        .rst_n(rst_n),

        .clk_ss1(clk_ss1),
        .rst_n_ss1(rst_n_ss1),

        .clk_ss2(clk_ss2),
        .rst_n_ss2(rst_n_ss2),

        .clk_ss3(clk_ss3),
        .rst_n_ss3(rst_n_ss3)
    );

endmodule
