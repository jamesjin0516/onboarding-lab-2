/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);

wire lsb;
assign lsb = ((out[15] ^ out[13]) ^ out[12]) ^ out[10];

always @(posedge clk)
  begin
    case(nReset) 0:
      begin
        out <= init;
      end
    endcase

    case (nReset) 1:
      begin
        out <= out << 1;
        out[0] <= lsb;
      end
    endcase
  end

endmodule
