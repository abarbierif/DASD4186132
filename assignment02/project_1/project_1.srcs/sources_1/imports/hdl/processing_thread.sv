module processing_thread(
  input clk,
  input rst,
  input start,
  input [9:0] n_samples,
  input last_sample,
  input [13:0] data_in,
  output logic [13:0] sqrt, mean, max, min,
  output ready
);

  logic min_ready, max_ready, rms_ready, mean_ready;
  logic [9:0] n_samples_reg;
  logic [19:0] div_lut_data;
  assign ready = rms_ready & mean_ready & max_ready & min_ready;

  always_ff @(posedge clk) begin
    if(rst) begin
      n_samples_reg <= 0;
    end else begin
      if(start) begin
        n_samples_reg <= n_samples;
      end
    end
  end
  
  
  div_lut lut_div(
    .clk(clk),
    .rst(rst),
    .addr(n_samples_reg),
    .data_out(div_lut_data)
  );

  rms rms_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .div_lut_data(div_lut_data),
    .sqrt(sqrt),
    .ready(rms_ready)
  );

  mean mean_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .div_lut_data(div_lut_data),
    .mean(mean),
    .ready(mean_ready)
  );

  max max_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .max(max),
    .ready(max_ready)
  );
  
  min min_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .min(min),
    .ready(min_ready)
  );

endmodule 
