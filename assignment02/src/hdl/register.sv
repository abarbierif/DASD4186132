module register #(
  parameter WIDTH = 8
  )(
  input clk,
  input rst,
  input en,
  input [WIDTH-1:0] data_in,
  output logic [WIDTH-1:0] data_out
);

  always_ff @(posedge clk) begin
    if(rst)     data_out <= 0;
    else if(en) data_out <= data_in; 
  end

endmodule
