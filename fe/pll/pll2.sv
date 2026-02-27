module pll2 (
    input clk_in,
    output clk_out
);

    // Dummy PLL, in a real design this would be a vendor specific PLL
    assign clk_out = clk_in;

endmodule
