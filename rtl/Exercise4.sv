/**
  @brief An asynchronous mux/decoder

  @input sel   input select
  @input cs    chip select

  @input alpha alpha input
  @input beta  beta input
  @input gamma gamma input

  @output out output
*/
module Exercise4 (
    input [1:0] sel,
    input cs,

    input [7:0] alpha,
    input [7:0] beta,
    input [7:0] gamma,

    output logic [7:0] out
);

always_comb
  begin
    if (cs == 1'b0)
      out = 8'b0;
    else
      case (sel)
        0: out = alpha;
        1: out = beta;
        2: out = gamma;
        3: out = 8'b0;
      endcase
  end

endmodule
