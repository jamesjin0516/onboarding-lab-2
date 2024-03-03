//`include "rtl/Mysteries/Mystery1.sv"
//`include "rtl/Mysteries/Mystery2.sv"

module Exercise3 (
    input clk,
    input nReset,
    input [3:0] a,
    input [15:0] b,
    input [15:0] c,
    output [15:0] out
);

wire [7:0] md1_out;
wire [7:0] md2_out;
/*
Mystery1 md1_1 (a[1:0], b[7:0], c[7:0], md1_out);
Mystery1 md1_2 (a[3:2], b[15:8], c[15:8], md2_out);

Mystery2 md2 (clk, nReset, md1_out, md2_out, out);
*/
endmodule
