module processing_thread(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  output ready
);

  logic max_min_ready, rms_ready, mean_ready;
  assign ready = rms_ready & mean_ready; //& max_min_ready;

  rms rms_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .ready(rms_ready)
  );

  
  mean mean_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .data_in(data_in),
    .ready(mean_ready)
  );
  

endmodule 
