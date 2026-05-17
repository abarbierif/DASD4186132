module processing_thread(
  input clk,
  input rst,
  input start,
  input [9:0] n_samples,
  input last_sample,
  input [13:0] data_in,
  output ready
);

  logic max_min_ready, rms_ready, mean_ready;
  assign ready = rms_ready & mean_ready; //& max_min_ready;
  
  logic [19:0] div_lut_data;
  
  div_lut lut_div(
    .clk(clk),
    .rst(rst),
    .addr(n_samples),
    .data_out(div_lut_data)
  );

  rms rms_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .div_lut_data(div_lut_data),
    .ready(rms_ready)
  );

  mean mean_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .div_lut_data(div_lut_data),
    .ready(mean_ready)
  );
  

endmodule 
