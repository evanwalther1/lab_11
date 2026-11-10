module jk_flipflop(
    input J,
    input K,
    input C,
    input R,
    output Q,
    output not_Q
);
    wire D;
    assign D = (J & not_Q) | (~K & Q);

    d_flipflop dff(
        .D(D), 
        .C(C), 
        .R(R), 
        .Q(Q), 
        .not_Q(not_Q)
    );
    
endmodule
