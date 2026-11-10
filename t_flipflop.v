module t_flipflop(
    input T,
    input C,
    input R,
    output Q,
    output not_Q
);

    jk_flipflop jkff(
        .J(T), 
        .K(T), 
        .C(C), 
        .R(R), 
        .Q(Q), 
        .not_Q(not_Q)
    );

endmodule
