module top(
  input clk,
  input rst,
  input [9:0] n_samples,
  input start,
  output ready,
  // pmod interface
  input d0, d1,
  output cs,
  output sclk
);

  logic ad1_driver_divclk;

  logic [11:0] data0_ad1, data1_ad1;

  logic ad1_driver_ready;
  logic start_ad1_driver;
  logic start_metrics;
  logic last_sample;
  logic [13:0] data_q2_12;
  
  logic metrics_ready;
  logic rms_ready, max_ready, min_ready, mean_ready;
  //assign metrics_ready = rms_ready & max_ready & min_ready & mean_ready;

  ad1_thread ad1_thread_inst(
    .clk(clk),
    .rst(rst),
    .start(start_ad1_driver),
    .ready(ad1_driver_ready),
    .data0(data0_ad1),
    .data1(data1_ad1),
    .d0(d0),
    .d1(d1),
    .cs(cs),
    .sclk(sclk)
  );

  acquisition_thread acquisiton_thread_inst(
    .clk(clk),
    .rst(rst),
    .start(start),
    .n_samples(n_samples),
    .data0(data0_ad1),
    .data1(data1_ad1),
    .ad1_driver_ready(ad1_driver_ready),
    .last_sample(last_sample),
    .start_metrics(start_metrics),
    .data_q2_12(data_q2_12),
    .start_ad1_driver(start_ad1_driver),
    .ready()
  );

  processing_thread processing_thread_inst(
    .clk(clk),
    .rst(rst),
    .start(start_metrics),
    .last_sample(last_sample),
    .data_in(data_q2_12),
    .ready()
  );
/*
  clk_divider #(.COUNTER_WIDTH(2), .PERIOD(4)) ad1_driver_clk(
    .clk(clk),
    .rst(rst),
    .divclk(ad1_driver_divclk)
  );

  ad1_driver ad1_driver_inst(
    .clk(clk),
    .rst(rst),
    .divclk(ad1_driver_divclk), //20MHz
    .start(start_ad1_driver),
    .ready(ad1_driver_ready),
    .data0(data0_ad1),
    .data1(data1_ad1),
    // pmod interface
    .d0(d0),
    .d1(d1),
    .cs(cs),
    .sclk(sclk)
  );

  samples_fsm main_fsm(
    .clk(clk),
    .rst(rst),
    .start(start),
    .n_samples(n_samples),
    .ad1_driver_ready(ad1_driver_ready),
    .metrics_ready(metrics_ready),
    .load(load),
    .start_metrics(start_metrics),
    .last(last),
    .start_ad1_driver(start_ad1_driver),
    .ready(ready)
  );

  // register for data0 and data1
  register #(.WIDTH(12)) data0_register(
    .clk(clk),
    .rst(rst),
    .en(load),
    .data_in(data0_ad1),
    .data_out()
  );

  register #(.WIDTH(12)) data1_register(
    .clk(clk),
    .rst(rst),
    .en(load),
    .data_in(data1_ad1),
    .data_out()
  );
*/
endmodule 
