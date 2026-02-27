module top (
    input clk,
    input rst_n
);

    wire clk_pll1;
    wire clk_pll2;

    wire clk_ss1;
    wire rst_n_ss1;

    wire clk_ss2;
    wire rst_n_ss2;

    wire clk_ss3;
    wire rst_n_ss3;

    pll1 pll1_inst (
        .clk_in(clk),
        .clk_out(clk_pll1)
    );

    pll2 pll2_inst (
        .clk_in(clk),
        .clk_out(clk_pll2)
    );

    proc_subsystem proc_subsystem_inst (
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

    subsystem1 ss1_inst (
        .clk(clk_ss1),
        .rst_n(rst_n_ss1),
        .clk_enable(1'b1)
    );

    subsystem2 ss2_inst (
        .clk(clk_ss2),
        .rst_n(rst_n_ss2),
        .clk_enable(1'b1)
    );

    subsystem3 ss3_inst (
        .clk(clk_ss3),
        .rst_n(rst_n_ss3),
        .clk_enable(1'b1)
    );

endmodule
