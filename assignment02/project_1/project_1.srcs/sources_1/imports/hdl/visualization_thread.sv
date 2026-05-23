module visualization_thread(
  input clk,
  input rst,
  input [13:0] sqrt, mean, max, min,
  input [1:0] metric_sel,
  input metrics_ready,
  input start_acquisition,
  output logic [7:0] seg,
  output logic [7:0] an,
  output logic dp
);

  logic metrics_ready_reg, metrics_ready_rising;
  logic start_acquisition_reg, start_acquisition_rising;
  logic [13:0] metric;
  logic [23:0] metric_scaled;
  logic [11:0] metric_scaled_reg;
  logic display;

  always @(posedge clk) begin
    metrics_ready_reg <= metrics_ready;
    start_acquisition_reg <= start_acquisition;
  end

  assign metrics_ready_rising = ~metrics_ready_reg & metrics_ready;
  assign start_acquisition_rising = ~start_acquisition_reg & start_acquisition;

  display_fsm fsm_display(
    .clk(clk),
    .rst(rst),
    .metrics_ready(metrics_ready_rising),
    .start_acquisition(start_acquisition_rising),
    .display(display)  
  );

  mux4 #(.WIDTH(14)) metric_mux(
    .in0(max),
    .in1(min),
    .in2(mean),
    .in3(sqrt),
    .sel(metric_sel),
    .out(metric)
  );

  assign metric_scaled = (10'd1000 * metric) >> 12; // Q10.0 * Q2.12 = Q12.12
  always_ff @(posedge clk) begin
    if(rst) begin
      metric_scaled_reg <= 0;
    end else begin
      if(display) begin
        metric_scaled_reg <= metric_scaled;
      end else begin
        metric_scaled_reg <= 0;
      end
    end
  end
 
  binto7seg bin27seg(
    .clk(clk),
    .result(metric_scaled_reg), // integer part
    .seg(seg),
    .an(an)
  );
  
  always_ff @(posedge clk) begin
    if(rst) begin
      dp <= 1;
    end else begin
      if(display) begin
        if(an == 8'b11110111) begin
          dp <= 0;
        end else begin
          dp <= 1;
        end
      end else begin
        dp <= 1;
      end
    end
  end

endmodule
