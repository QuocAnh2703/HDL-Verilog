module top_module (input x, input y, output z);
    wire [1:0] w1, w2, w3;
    mod_a a1 (
        .x(x),
        .y(y),
        .z(w1[0])
    );
    mod_b b1 (
        .x(x),
        .y(y),
        .z(w1[1])
    );
    mod_a a2 (
        .x(x),
        .y(y),
        .z(w2[0])
    );
    mod_b b2 (
        .x(x),
        .y(y),
        .z(w2[1])
    );
    assign w3[0] = |w1;
    assign w3[1] = &w2;
    assign z = ^w3;
endmodule
module mod_a (input x, input y, output z);
        assign z = (x^y) & x;
    endmodule
    module mod_b (input x, input y, output z);
        assign z = (x==y);
    endmodule