module mean(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  input [19:0] div_lut_data,
  output ready
);

  logic acc_en;

  logic [23:0] acc_data_in; // 3.3*1024 < 4096
  
  logic last_sample_reg0;

  mean_fsm fsm_mean(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample_reg0),
    .acc_en(acc_en),
    .ready(ready)
  );

  always_ff @(posedge clk) begin
    if(rst) begin
      acc_data_in <= 0;
    end else begin
      if(acc_en) begin
        acc_data_in <= acc_data_in + data_in; // Q12.12
      end
      last_sample_reg0 <= last_sample;
    end
  end

endmodule
