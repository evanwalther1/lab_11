module d_flipflop(
    input D,
    input C,
    input R,
    output reg Q,
    output not_Q
);
    initial Q = 1'b0;

    always @(posedge C or posedge R) begin
        if (R)
            Q <= 1'b0;
        else
            Q <= D;
    end

    assign not_Q = ~Q;
endmodule
