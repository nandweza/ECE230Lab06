// Implement top level module
module top (
    input [7:0] sw,
    output [5:0] led
);

    // Stairway light
    light u_light(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );

    // single-bit adder
    adder u_adder (
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );

    // 2-bit ripple carry adder

    wire c1;

    // LSB adder
    full_adder fa_lsb (
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(c1)
    );

    // MSB adder
    full_adder fa_msb (
        .A(sw[5]),
        .B(sw[7]),
        .Cin(c1),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule