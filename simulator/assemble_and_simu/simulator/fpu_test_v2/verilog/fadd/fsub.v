`default_nettype none
`include "fadd.v"

`default_nettype none

module fsub_pipe
    (
        input wire clk,
        input wire rstn,
        input wire [31:0] x,
        input wire [31:0] y,
        output wire [31:0] res
    );

    fadd_pipe fsub_fadd(
        .clk(clk),
        .rstn(rstn),
        .x(x),
        .y({~y[31],y[30:0]}),
        .res(res)
    );

endmodule

`default_nettype wire