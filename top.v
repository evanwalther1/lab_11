module top(
    input btnU,
    input btnC,
    output [6:0] led
);
    ripple_divider ripple(
        .clk(btnC), 
        .reset(btnU), 
        .count(led[2:0])
    );

    modulo_divider modulo(
        .C(btnC), 
        .reset(btnU), 
        .count(led[5:3]), 
        .divided_C(led[6])
    );

endmodule
