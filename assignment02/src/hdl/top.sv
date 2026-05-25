`timescale 1ns/1ps
module top(
  input clk,
  input rst,
  input [9:0] N,
  input start,
  input mode,
  input [1:0] metric_sel,
  // pmod interface
  input d0, d1,
  output cs,
  output sclk,
  // display interface
  output logic [7:0] seg,
  output logic [7:0] an,
  output logic dp
);

  logic ad1_driver_divclk;

  logic [11:0] data0_ad1, data1_ad1;

  logic ad1_driver_ready;
  logic start_ad1_driver;
  logic start_processing;
  logic [9:0] n_samples;
  logic last_sample;
  logic [13:0] data_q2_12;
  logic [13:0] sqrt, mean, max, min;
  
  logic acquisition_ready, processing_ready, metrics_ready;
  assign metrics_ready = acquisition_ready & processing_ready;
  
  logic rst_pulse, start_pulse;
  logic clk_buttons;

  
  clockDivider #(.TC(2000)) buttons_clk(
    .clk(clk),
    .divClk(clk_buttons)
  );

  buttonEdgeDetect rst_rising(
    .button(rst),
    .clk(clk),
    .divClk(clk_buttons),
    .edgeDet(rst_pulse)
  );

  buttonEdgeDetect start_rising(
    .button(start),
    .clk(clk),
    .divClk(clk_buttons),
    .edgeDet(start_pulse)
  );

  ad1_thread ad1_thread_inst(
    .clk(clk),
    .rst(rst_pulse),
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
    .rst(rst_pulse),
    .start(start_pulse),
    .mode(mode),
    .n(N),
    .data0(data0_ad1),
    .data1(data1_ad1),
    .ad1_driver_ready(ad1_driver_ready),
    .processing_ready(processing_ready),
    .n_samples(n_samples),
    .last_sample(last_sample),
    .start_processing(start_processing),
    .data_q2_12(data_q2_12),
    .start_ad1_driver(start_ad1_driver),
    .ready(acquisition_ready)
  );

  processing_thread processing_thread_inst(
    .clk(clk),
    .rst(rst_pulse),
    .start(start_processing),
    .n_samples(n_samples),
    .last_sample(last_sample),
    .data_in(data_q2_12),
    .sqrt(sqrt),
    .mean(mean),
    .max(max),
    .min(min),
    .ready(processing_ready)
  );

  visualization_thread visualization_thread_inst(
    .clk(clk),
    .rst(rst_pulse),
    .sqrt(sqrt),
    .mean(mean),
    .max(max),
    .min(min),
    .metric_sel(metric_sel),
    .metrics_ready(metrics_ready),
    .start_acquisition(start),
    .seg(seg),
    .an(an),
    .dp(dp)
  );

endmodule 
