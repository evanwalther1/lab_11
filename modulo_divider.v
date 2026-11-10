module modulo_divider(
    input C,
    input reset,
    output [2:0] count,
    output divided_C
);
    wire [2:0] sum;
    wire carry0, carry1, carry2;
    wire terminal_count;
    wire [2:0] next_count;
    wire output_next;
    wire unused0, unused1, unused2, unused3;

    //Add one
    full_adder full_adder1(.A(count[0]), .B(1'b1), .C(1'b0), .Y(sum[0]), .Cout(carry0));
    full_adder full_adder2(.A(count[1]), .B(1'b0), .C(carry0), .Y(sum[1]), .Cout(carry1));
    full_adder full_adder3(.A(count[2]), .B(1'b0), .C(carry1), .Y(sum[2]), .Cout(carry2));

    //detect 5
    assign terminal_count = count[2] & ~count[1] & count[0];
    //reset count
    assign next_count[0] = sum[0] & ~terminal_count;
    assign next_count[1] = sum[1] & ~terminal_count;
    assign next_count[2] = sum[2] & ~terminal_count;
    //toggle divided C
    assign output_next = divided_C ^ terminal_count;

    //Store values
    d_flipflop bit0(.D(next_count[0]), .C(C), .R(reset), .Q(count[0]), .not_Q(unused0));
    d_flipflop bit1(.D(next_count[1]), .C(C), .R(reset), .Q(count[1]), .not_Q(unused1));
    d_flipflop bit2(.D(next_count[2]), .C(C), .R(reset), .Q(count[2]), .not_Q(unused2));
    d_flipflop outff(.D(output_next), .C(C), .R(reset), .Q(divided_C), .not_Q(unused3));

endmodule
