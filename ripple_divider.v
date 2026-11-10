module ripple_divider(
    input clk,
    input reset,
    output [2:0] count
);
    wire unused0, unused1, unused2;

    t_flipflop stage0(
        .T(1'b1), 
        .C(clk), 
        .R(reset), 
        .Q(count[0]), 
        .not_Q(unused0)
    );

    t_flipflop stage1(
        .T(1'b1), 
        .C(count[0]), 
        .R(reset), 
        .Q(count[1]), 
        .not_Q(unused1)
    );

    t_flipflop stage2(
        .T(1'b1), 
        .C(count[1]), 
        .R(reset), 
        .Q(count[2]), 
        .not_Q(unused2)
    );
    
endmodule
