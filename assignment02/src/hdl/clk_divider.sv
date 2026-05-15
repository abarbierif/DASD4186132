module clk_divider #(
  parameter COUNTER_WIDTH = 32,
  parameter PERIOD = 8
  )(
  input clk,
  input rst,
  output divclk
);

  logic [COUNTER_WIDTH-1:0] counter;

  always_ff @(posedge clk) begin
    if(rst) begin
      counter <= 0;
    end else begin
      if(counter >= PERIOD - 1) begin
        counter <= 0;
      end else begin
       	counter <= counter + 1;
      end
    end
  end

  assign divclk = (counter == PERIOD-1);

endmodule
