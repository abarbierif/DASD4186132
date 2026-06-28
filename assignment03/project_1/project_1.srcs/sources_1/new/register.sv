module register #(parameter WIDTH=8)(
  input clk,
  input rst,
  input en,
  input clear,
  input [WIDTH-1:0] sel,
  input  [WIDTH-1:0] data_in,
  output reg [WIDTH-1:0] data_out
);

  always_ff @(posedge clk) begin
    if(rst) begin
      data_out <= 0;
    end else begin
      if(clear) begin
        data_out <= 0;
      end else if(en) begin
        data_out <= (data_in & sel) | (data_out & ~sel);
      end
    end
  end 

endmodule
